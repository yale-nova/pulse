#include "webservice_single.h"
// Return true iff this machine is the one server
bool is_server() { return FLAGS_process_id == 0; }

void req_handler(erpc::ReqHandle *req_handle, void *_context)
{
  auto *c = static_cast<ServerContext *>(_context);
  erpc::Rpc<erpc::CTransport>::resize_msg_buffer(&req_handle->pre_resp_msgbuf_,
                                                 FLAGS_resp_size);

  const erpc::MsgBuffer *req_msgbuf = req_handle->get_req_msgbuf();
  // size_t req_size = req_msgbuf->get_data_size();
  const Request *req = reinterpret_cast<const Request *>(req_msgbuf->buf_);

  // uint8_t key_copy[sizeof(hashtable::key_type)];  // mti->get() modifies key
  hashtable::key_type key_copy;
  memcpy(&key_copy, &(req->key), sizeof(hashtable::key_type));

  auto *resp =
      reinterpret_cast<Response *>(req_handle->pre_resp_msgbuf_.buf_);
  if (FLAGS_datapath_verbose)
  {
    LOG(log_level::info) << "Key to find is: " << key_copy;
  }
  if (req->ht == READ)
  {
    auto result = c->ht.find(key_copy); // TODO avoid data copy here
    if(result == c->ht.end()) {
      memcpy(&(resp->result), &c->data[0], sizeof(Response::result));
    } else {
      memcpy(&(resp->result), &c->data[reinterpret_cast<uint64_t>(result.get_value()) % kAppMaxData], sizeof(Response::result));
    }
  }
  else if (req->ht == UPDATE)
  {
    c->ht.update(std::make_pair(key_copy, gen_random(7).c_str()));
  }
  else if (req->ht == INSERT)
  {
    c->ht.insert(std::make_pair(key_copy, gen_random(7).c_str()), true);
  }
  c->stat_rx_bytes_tot += FLAGS_req_size;
  c->stat_tx_bytes_tot += FLAGS_resp_size;
  // LOG(log_level::info) << "Request handled by thread: " << c->thread_id_;
  c->rpc_->enqueue_response(req_handle, &req_handle->pre_resp_msgbuf_);
}

// void server_thread_func(size_t thread_id, erpc::Nexus *nexus)
void server_thread_func(erpc::Nexus *nexus, size_t thread_id)
{

  std::vector<size_t> port_vec = flags_get_numa_ports(FLAGS_numa_node);
  uint8_t phy_port = port_vec.at(0);

  ServerContext c;
  c.thread_id_ = thread_id;

  erpc::Rpc<erpc::CTransport> rpc(nexus, static_cast<void *>(&c), thread_id /* tid */,
                                  basic_sm_handler, phy_port);

  rpc.set_pre_resp_msgbuf_size(FLAGS_resp_size);
  c.rpc_ = &rpc;

  if (thread_id == 0)
  {
    std::ifstream data_stream(FLAGS_data_filepath);
    input_parser.read_all_keys(data_stream, FLAGS_num_keys); // FIXME num_keys
    LOG(log_level::info) << "Load all keys: " << input_parser.all_keys.size();
    for (size_t i = 0; i < FLAGS_num_keys; i++)
    {                                    // FIXME num_keys
      std::string value = gen_random(7); // FIXME check this size
      c.ht.insert(std::make_pair(input_parser.all_keys[i], value.c_str()));
      if (FLAGS_datapath_verbose == 1)
      {
        std::cout << "Inserting key: " << input_parser.all_keys[i] << " value: " << value << std::endl;
      }
    }
    LOG(log_level::info) << "insert all keys";
    c.ht.print_statistics();
  }

  while (true)
  {
    rpc.run_event_loop(1000);
    if (ctrl_c_pressed == 1)
      break;
  }
}

void app_cont_func(void *, void *);
inline void send_req(WebServiceClientContext &c, size_t msgbuf_idx)
{
  Request req;
  req.key = input_parser.all_query[c.window_[msgbuf_idx].num_reqs].key;
  auto cache_start_time = erpc::rdtsc();
  if (input_parser.all_query[c.window_[msgbuf_idx].num_reqs].query_type == "READ")
  {
    bool cache_flag = true;
    auto result = c.cache.get(req.key);
    while (result != NULL)
    {
      ACCESS_ONCE_POINTER(*result);
      double cache_usec = erpc::to_usec(erpc::rdtsc() - cache_start_time,
                                        c.rpc_->get_freq_ghz());
      c.cache_latency.update(static_cast<size_t>(cache_usec * kAppLatFac));
      c.cache_hit++;
      c.num_resps++;
      c.window_[msgbuf_idx].num_reqs++;
      if (c.window_[msgbuf_idx].num_reqs >= FLAGS_num_queries)
      {
        experiment_finished = 1;
        return;
      }
      if(input_parser.all_query[c.window_[msgbuf_idx].num_reqs].query_type != "READ") {
        cache_flag = false;
        break;
      }
      req.key = input_parser.all_query[c.window_[msgbuf_idx].num_reqs].key;
      cache_start_time = erpc::rdtsc();
      result = c.cache.get(req.key);
    }
    if(cache_flag) {
      double cache_usec = erpc::to_usec(erpc::rdtsc() - cache_start_time,
                                        c.rpc_->get_freq_ghz());
      c.cache_latency.update(static_cast<size_t>(cache_usec * kAppLatFac));
      req.ht = READ;
    }
  }
  if (input_parser.all_query[c.window_[msgbuf_idx].num_reqs].query_type == "UPDATE")
  {
    c.cache.erase(req.key);
    req.ht = UPDATE;
  }
  else if (input_parser.all_query[c.window_[msgbuf_idx].num_reqs].query_type == "INSERT")
  {
    c.cache.erase(req.key);
    req.ht = INSERT;
  }
  erpc::MsgBuffer &req_msgbuf = c.window_[msgbuf_idx].req_msgbuf_;
  *reinterpret_cast<Request *>(req_msgbuf.buf_) = req;

  c.window_[msgbuf_idx].req_ts_ = erpc::rdtsc();

  if (c.window_[msgbuf_idx].num_reqs >= FLAGS_num_queries)
  {
    experiment_finished = 1;
    // LOG(log_level::info) << "Experiment finished: " << input_parser.all_query.size();
    return;
  }

  const size_t server_id = c.fastrand_.next_u32() % FLAGS_num_server_threads;
  // LOG(log_level::info) << "Sending to server id " << server_id;
  c.rpc_->enqueue_request(c.session_num_vec_[server_id], kAppReqType,
                          &req_msgbuf, &c.window_[msgbuf_idx].resp_msgbuf_, app_cont_func,
                          reinterpret_cast<void *>(msgbuf_idx));
  if (kAppVerbose)
  {
    printf("Latency: Sending request of size %zu bytes to server #%zu\n",
           c.window_[msgbuf_idx].req_msgbuf_.get_data_size(), server_id);
  }
  c.window_[msgbuf_idx].num_reqs++;
  c.stat_tx_bytes_tot += FLAGS_req_size;
}

void app_cont_func(void *_context, void *_tag)
{
  auto *c = static_cast<WebServiceClientContext *>(_context);
  auto msgbuf_idx = reinterpret_cast<size_t>(_tag);
  const erpc::MsgBuffer &resp_msgbuf = c->window_[msgbuf_idx].resp_msgbuf_;
  erpc::MsgBuffer &req_msgbuf = c->window_[msgbuf_idx].req_msgbuf_;
  Request req = *reinterpret_cast<Request *>(req_msgbuf.buf_);

  if (FLAGS_datapath_verbose)
  {
    printf("Latency: Received response of size %zu bytes\n",
           resp_msgbuf.get_data_size());
  }
  double network_usec = erpc::to_usec(erpc::rdtsc() - c->window_[msgbuf_idx].req_ts_,
                                      c->rpc_->get_freq_ghz());
  // LOG(log_level::info) << "Latency is: " << network_usec;
  c->network_latency.update(static_cast<size_t>(network_usec * kAppLatFac));

  auto process_start = erpc::rdtsc();
  // std::string plaintext(reinterpret_cast<char*>(resp_msgbuf.buf_), FLAGS_resp_size);

  auto result = *reinterpret_cast<EightKB *>(resp_msgbuf.buf_);
  c->cache.put(req.key, result);
  c->circular_q.try_enqueue(result);

  // if (c->num_resps % 10000000 == 0)
  //   LOG(log_level::info) << "Estimated size of queue is : " << c->q.size_approx();

  double process_usec = erpc::to_usec(erpc::rdtsc() - process_start,
                                      c->rpc_->get_freq_ghz());
  c->local_latency.update(static_cast<size_t>(process_usec * kAppLatFac));
  c->num_resps++;

  send_req(*c, msgbuf_idx);
}

// void client_thread_func(size_t thread_id, app_stats_t *app_stats, erpc::Nexus *nexus)
void client_thread_func(erpc::Nexus *nexus, size_t thread_id, WebServiceClientContext &c)
{

  std::vector<size_t> port_vec = flags_get_numa_ports(FLAGS_numa_node);
  erpc::rt_assert(port_vec.size() > 0);

  uint8_t phy_port = port_vec.at(thread_id % port_vec.size());

  // c.app_stats = app_stats;
  erpc::Rpc<erpc::CTransport> rpc(nexus, static_cast<void *>(&c), thread_id,
                                  basic_sm_handler, phy_port);

  rpc.retry_connect_on_invalid_rpc_id_ = true;
  c.rpc_ = &rpc;
  c.thread_id_ = thread_id;
  // c.app_stats = new struct app_stats_t;

  // connect_sessions(c);
  create_sessions(c);
  LOG(log_level::info) << "Session connected for process: " << FLAGS_process_id << " thread: " << thread_id;

  for (size_t i = 0; i < FLAGS_window_size; i++)
  {
    c.window_[i].req_msgbuf_ = c.rpc_->alloc_msg_buffer_or_die(FLAGS_req_size);
    c.window_[i].resp_msgbuf_ = c.rpc_->alloc_msg_buffer_or_die(FLAGS_resp_size);
  }
  LOG(log_level::info) << "Finished initializing buffers";

  for (size_t msgbuf_idx = 0; msgbuf_idx < FLAGS_window_size; msgbuf_idx++)
  {
    send_req(c, msgbuf_idx);
  }

  // send_req(c);
  c.tput_t0.reset();
  LOG(log_level::info) << "Start event loop";

  for (size_t i = 0; i < FLAGS_test_ms; i += kAppEvLoopMs)
  {
    struct timespec start;
    clock_gettime(CLOCK_REALTIME, &start);
    rpc.run_event_loop(kAppEvLoopMs);
    if (unlikely(ctrl_c_pressed == 1))
    {
      LOG(log_level::info) << "Exiting event loop because of ctrl_c";
      break;
    }
    if (unlikely(experiment_finished == 1))
    {
      LOG(log_level::info) << "Exiting event loop because of experiment finished";
      break;
    }
    double seconds = erpc::sec_since(start);
    double hit_rate = (double)(c.cache_hit) / (double)(c.num_resps);
    if (hit_rate < 1e-4)
    {
      hit_rate = 0;
    }
    LOG(log_level::info) << "Thread [" << thread_id
                         << "] Network Latency(us): Average: " << c.network_latency.perc(.5) / kAppLatFac
                         << " 99-Latency: " << c.network_latency.perc(.99) / kAppLatFac
                         << " 99.9-Latency: " << c.network_latency.perc(.999) / kAppLatFac
                         << "] Total Latency(us): Average: " << c.local_latency.perc(.5) / kAppLatFac
                         << " 99-Latency: " << c.local_latency.perc(.99) / kAppLatFac
                         << " 99.9-Latency: " << c.local_latency.perc(.999) / kAppLatFac
                         << "] Cache Latency(us): Average: " << c.cache_latency.perc(.5) / kAppLatFac
                         << " 99-Latency: " << c.cache_latency.perc(.99) / kAppLatFac
                         << " 99.9-Latency: " << c.cache_latency.perc(.999) / kAppLatFac
                         << " number of cache hits: " << c.cache_hit
                         << " number of responses: " << c.num_resps
                         << " cache hit rate: " << hit_rate
                         << " Throughput(Mops): " << c.num_resps / (seconds * Mi(1));
    c.num_resps = 0;
    c.cache_hit = 0;
    c.network_latency.reset();
    c.cache_latency.reset();
    c.local_latency.reset();
  }
}

void consume_thread_func(size_t thread_id, WebServiceClientContext &c)
{
  std::string key = "sixteen-password";
  std::string iv = "";
  struct EightKB plaintext_byte;
  while (true)
  {
    try
    {
      if (!c.circular_q.try_dequeue(plaintext_byte))
        continue;
      std::string plaintext = std::string(reinterpret_cast<char *>(&plaintext_byte), 8 * 1024);
      std::string ciphertext = encrypt(plaintext, key, iv, true);
      std::string compressed;
      snappy::Compress(ciphertext.c_str(), ciphertext.size(), &compressed);
      auto compressed_len = compressed.size();
      ACCESS_ONCE(compressed_len);
    }
    catch (const std::exception &e)
    {
      std::cerr << e.what() << '\n';
      LOG(log_level::info) << "Stopping this consumer thread";
    }
  }
}

int main(int argc, char **argv)
{
  signal(SIGINT, ctrl_c_handler);
  gflags::ParseCommandLineFlags(&argc, &argv, true);
  erpc::rt_assert(FLAGS_numa_node <= 1, "Invalid NUMA node");
  erpc::rt_assert(FLAGS_window_size <= kAppMaxWindowSize, "Window too large");

  ServerContext::ht = hashtable::HashTable(FLAGS_capacity, FLAGS_max_load_factor);

  erpc::Nexus nexus(erpc::get_uri_for_process(FLAGS_process_id),
                    FLAGS_numa_node, 0);
  nexus.register_req_func(kAppReqType, req_handler);

  size_t num_threads = FLAGS_process_id == 0 ? FLAGS_num_server_threads
                                             : FLAGS_num_client_threads;
  std::vector<std::thread> threads(num_threads);
  std::vector<std::thread> consumer_threads(num_threads);
  std::vector<WebServiceClientContext> c;
  if (!is_server())
  {
    std::ifstream query_stream(FLAGS_query_filepath);
    input_parser.read_all_query(query_stream, FLAGS_num_queries);
    LOG(log_level::info) << "Load all queries " << input_parser.all_query.size();

    LOG(log_level::info) << "Each cache has " << kCacheSize / num_threads << " bytes";
    c.reserve(num_threads);
    for (size_t i = 0; i < num_threads; i++)
    {
      c.push_back(WebServiceClientContext(kCacheSize / num_threads));
    }
    LOG(log_level::info) << "Caches set up";
  }

  for (size_t i = 0; i < num_threads; i++)
  {
    if (is_server())
    {
      threads[i] = std::thread(server_thread_func, &nexus, i);
    }
    else
    {
      threads[i] = std::thread(client_thread_func, &nexus, i, std::ref(c[i]));
      consumer_threads[i] = std::thread(consume_thread_func, i, std::ref(c[i]));
      erpc::bind_to_core(consumer_threads[i], FLAGS_numa_node, (i + num_threads) % kMaxCoreNumber);
    }
    erpc::bind_to_core(threads[i], FLAGS_numa_node, i);
  }

  for (size_t i = 0; i < num_threads; i++)
    threads[i].join();
}
