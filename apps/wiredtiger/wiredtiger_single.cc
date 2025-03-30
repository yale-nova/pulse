#include "wiredtiger_single.h"

// Return true iff this machine is the one server
bool is_server() { return FLAGS_process_id == 0; }

void req_handler(erpc::ReqHandle *req_handle, void *_context)
{
  auto *c = static_cast<ServerContext *>(_context);
  erpc::Rpc<erpc::CTransport>::resize_msg_buffer(&req_handle->pre_resp_msgbuf_,
                                                 FLAGS_resp_size);

  const erpc::MsgBuffer *req_msgbuf = req_handle->get_req_msgbuf();
  const Request *req = reinterpret_cast<const Request *>(req_msgbuf->buf_);

  uint64_t key_copy;
  uint64_t scan_length_copy;
  memcpy(&key_copy, &(req->key), sizeof(uint64_t));
  memcpy(&scan_length_copy, &(req->scan_length), sizeof(uint64_t));

  auto *resp =
      reinterpret_cast<Response *>(req_handle->pre_resp_msgbuf_.buf_);
  if (FLAGS_datapath_verbose)
  {
    LOG(log_level::info) << "Key to start scanning is: " << key_copy;
    LOG(log_level::info) << "Scan length is: " << scan_length_copy;
  }
  if (req->ht == SCAN)
  {
    std::vector<struct bplustree_entry> result;
    uint64_t count = c->bt->scan(key_copy, scan_length_copy, result); // TODO avoid data copy here
    uint64_t offset;
    //volatile HalfKB dest;
    //for(int i = 0; i < result.size(); i++) {
    //  memcpy((void*)&dest, (void*)&(c->data[result[i].key % kAppMaxData]), sizeof(HalfKB));
    //  //volatile auto copy = c->data[result[i].key % kAppMaxData];
    //}
    if (FLAGS_datapath_verbose)
    {
      LOG(log_level::info) << "result size is: " << result.size() << " count: " << count;
    }
    memcpy(&(resp->result), &count, sizeof(Response::result));
  }
  else if (req->ht == INSERT)
  {
    std::string ctr = gen_random(7);
    uint64_t count = c->bt->insert(req->key, const_cast<void *>(reinterpret_cast<const void *>(ctr.c_str())), true);
    memcpy(&(resp->result), &count, sizeof(Response::result));
  }
  c->stat_rx_bytes_tot += FLAGS_req_size;
  c->stat_tx_bytes_tot += FLAGS_resp_size;
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
    if(FLAGS_init_with_layout) {
      c.bt = new BplustreeSerde(FLAGS_layout_filepath, 1); // TODO FIXME
    } else {
      c.bt = new BPlusTree("./");
      std::ifstream data_stream(FLAGS_data_filepath);
      input_parser.read_all_keys(data_stream, FLAGS_num_keys); // FIXME num_keys
      LOG(log_level::info) << "Load all keys: " << input_parser.all_keys.size();
      for (size_t i = 0; i < FLAGS_num_keys; i++)
      {                                    // FIXME num_keys
        std::string value = gen_random(7); // FIXME check this size
        c.bt->insert(input_parser.all_keys[i], value.data());
        if (FLAGS_datapath_verbose == 1)
        {
          std::cout << "Inserting key: " << input_parser.all_keys[i] << " value: " << value << std::endl;
        }
      }
      LOG(log_level::info) << "insert all keys";
      c.bt->print_statistics_size_only();
    }
  }

  while (true)
  {
    rpc.run_event_loop(1000);
    if (ctrl_c_pressed == 1)
      break;
  }
}

void app_cont_func(void *, void *);
inline void send_req(WiredTigerClientContext &c, size_t msgbuf_idx)
{
  Request req;
  req.key = input_parser.all_query[c.window_[msgbuf_idx].num_reqs].key;
  auto cache_start_time = erpc::rdtsc();
  if (input_parser.all_query[c.window_[msgbuf_idx].num_reqs].query_type == "SCAN")
  {
    bool cache_flag = true;
    req.scan_length = input_parser.all_query[c.window_[msgbuf_idx].num_reqs].scan_len;
    req.ht = SCAN;
    //auto result = c.cache.get(req.key, req.scan_length);
    //while (result != 0)
    //{
    //  ACCESS_ONCE(result);
    //  double cache_usec = erpc::to_usec(erpc::rdtsc() - cache_start_time,
    //                                    c.rpc_->get_freq_ghz());
    //  c.cache_latency.update(static_cast<size_t>(cache_usec * kAppLatFac));
    //  c.cache_hit++;
    //  c.num_resps++;
    //  c.window_[msgbuf_idx].num_reqs++;
    //  if (c.window_[msgbuf_idx].num_reqs >= FLAGS_num_queries)
    //  {
    //    experiment_finished = 1;
    //    return;
    //  }
    //  if(input_parser.all_query[c.window_[msgbuf_idx].num_reqs].query_type != "SCAN") {
    //    cache_flag = false;
    //    break;
    //  }
    //  req.key = input_parser.all_query[c.window_[msgbuf_idx].num_reqs].key;
    //  req.scan_length = input_parser.all_query[c.window_[msgbuf_idx].num_reqs].scan_len;
    //  cache_start_time = erpc::rdtsc();
    //  result = c.cache.get(req.key, req.scan_length);
    //}
    //if(cache_flag) {
    //  double cache_usec = erpc::to_usec(erpc::rdtsc() - cache_start_time,
    //                                    c.rpc_->get_freq_ghz());
    //  c.cache_latency.update(static_cast<size_t>(cache_usec * kAppLatFac));
    //  req.ht = SCAN;
    //}
  }
  if (input_parser.all_query[c.window_[msgbuf_idx].num_reqs].query_type == "INSERT")
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
  auto *c = static_cast<WiredTigerClientContext *>(_context);
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
  c->network_latency.update(static_cast<size_t>(network_usec * kAppLatFac));

  auto process_start = erpc::rdtsc();
  //// std::string plaintext(reinterpret_cast<char*>(resp_msgbuf.buf_), FLAGS_resp_size);

  auto result = *reinterpret_cast<Response *>(resp_msgbuf.buf_);
  ACCESS_ONCE(result);
  //FIXME
  c->cache.put(req.key, req.scan_length, 1);
  //c->circular_q.try_enqueue(result);

  double process_usec = erpc::to_usec(erpc::rdtsc() - process_start,
                                      c->rpc_->get_freq_ghz());
  c->local_latency.update(static_cast<size_t>(process_usec * kAppLatFac));
  c->num_resps++;

  send_req(*c, msgbuf_idx);
}

// void client_thread_func(size_t thread_id, app_stats_t *app_stats, erpc::Nexus *nexus)
void client_thread_func(erpc::Nexus *nexus, size_t thread_id, WiredTigerClientContext &c)
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
                         << "] Network Latency(ns): Average: " << c.network_latency.perc(.5) / kAppLatFac
                         << " 99-Latency: " << c.network_latency.perc(.99) / kAppLatFac
                         << " 99.9-Latency: " << c.network_latency.perc(.999) / kAppLatFac
                         << "] Total Latency(ns): Average: " << c.local_latency.perc(.5) / kAppLatFac
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

void consume_thread_func(size_t thread_id, WiredTigerClientContext &c)
{
  while (true)
  {
    try
    {
      Response tmp;;
      if (!c.circular_q.try_dequeue(tmp))
        continue;
      ACCESS_ONCE(tmp);
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
  //ServerContext::bt= BPlusTree("./");

  signal(SIGINT, ctrl_c_handler);
  gflags::ParseCommandLineFlags(&argc, &argv, true);
  erpc::rt_assert(FLAGS_numa_node <= 1, "Invalid NUMA node");
  erpc::rt_assert(FLAGS_window_size <= kAppMaxWindowSize, "Window too large");

  int ret;
  WT_CONNECTION *conn;
  WT_SESSION *session;
  ret = wiredtiger_open(FLAGS_db_filepath.c_str(), NULL, FLAGS_wiredtiger_open_config.c_str(), &conn);
  if (ret != 0)
  {
    LOG(log_level::info) << "WiredTiger open failed";
  }
  my_data_source_init(conn);
  /*! [WT_DATA_SOURCE register] */
  static WT_DATA_SOURCE my_dsrc = {my_alter, my_create, my_compact, my_drop, my_open_cursor,
                                   my_rename, my_salvage, my_size, my_truncate, my_range_truncate, my_verify, my_checkpoint,
                                   my_terminate, my_lsm_pre_merge};
  ret = conn->add_data_source(conn, "dsrc:", &my_dsrc, NULL);
  if (ret != 0)
  {
    LOG(log_level::info) << "Data source register failed";
  }

  /*! [WT_EXTENSION_API default_session] */
  (void)wt_api->msg_printf(wt_api, NULL, "configuration complete");
  /*! [WT_EXTENSION_API default_session] */

  ret = conn->open_session(conn, NULL, NULL, &session);
  if (ret != 0)
  {
    LOG(log_level::info) << "Open session failed with error: " << ret;
  }
  ret = session->create(session, FLAGS_wiredtiger_table_name.c_str(), FLAGS_wiredtiger_data_format.c_str());
  if (ret != 0)
  {
    LOG(log_level::info) << "Create session failed with error: " << ret;
  }
  // ret = session->begin_transaction(session, NULL);
  WT_CURSOR *cursor;
  LOG(log_level::info) << "Opening the table name: " << FLAGS_wiredtiger_table_name;
  ret = session->open_cursor(session, FLAGS_wiredtiger_table_name.c_str(), NULL, NULL, &cursor);
  if (ret != 0)
  {
    LOG(log_level::info) << "Open cursor failed with error: " << ret;
  }

  erpc::Nexus nexus(erpc::get_uri_for_process(FLAGS_process_id),
                    FLAGS_numa_node, 0);
  nexus.register_req_func(kAppReqType, req_handler);

  size_t num_threads = FLAGS_process_id == 0 ? FLAGS_num_server_threads
                                             : FLAGS_num_client_threads;
  std::vector<std::thread> threads(num_threads);
  std::vector<std::thread> consumer_threads(num_threads);
  std::vector<WiredTigerClientContext> c;
  if (!is_server())
  {
    std::ifstream query_stream(FLAGS_query_filepath);
    input_parser.read_all_query(query_stream, FLAGS_num_queries);
    LOG(log_level::info) << "Load all queries " << input_parser.all_query.size();

    LOG(log_level::info) << "Each cache has " << kCacheSize / num_threads << " bytes";
    c.reserve(num_threads);
    for (size_t i = 0; i < num_threads; i++)
    {
      c.push_back(WiredTigerClientContext(kCacheSize / num_threads));
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
      //consumer_threads[i] = std::thread(consume_thread_func, i, std::ref(c[i]));
      //erpc::bind_to_core(consumer_threads[i], FLAGS_numa_node, (i + num_threads) % kMaxCoreNumber);
    }
    erpc::bind_to_core(threads[i], FLAGS_numa_node, i);
  }

  for (size_t i = 0; i < num_threads; i++)
    threads[i].join();
}
