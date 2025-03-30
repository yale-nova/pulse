#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>

#include <cassert>
#include <chrono>
#include <climits>
#include <fstream>
#include <iostream>
#include <istream>
#include <sstream>
#include <streambuf>
#include <string>
#include <thread>
#include <vector>
#include <random>

#include "../benchmark_utils.h"
#include "ds/parser/rpc_parse.h"
#include "ds/utils/logger.h"

using namespace pc::parser;
using namespace pc::utils;

DEFINE_uint64(num_keys, 0, "Number of keys");
DEFINE_uint64(num_queries, 0, "Number of queries");
DEFINE_uint64(capacity, 4096, "Initial capacity of the hashtable");
DEFINE_uint64(num_threads, 2, "Number of threads");
DEFINE_uint64(num_lists, 2, "Number of threads");
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbc_query_test", "Query file");

RpcParse parser;

struct node
{
  uint64_t key;
  uint64_t value;
  struct node *next;
  char padding[256 - 8 - 8 - 8];
};
std::vector<struct node *> start;
std::vector<struct node *> cur;
std::vector<struct node *> prev_node;
std::vector<std::vector<uint64_t>> result;
std::vector<uint64_t> total_result;

void func(int thread_id)
{
  std::random_device rd;                                             // obtain a random number from hardware
  std::mt19937 gen(rd());                                            // seed the generator
  std::uniform_int_distribution<> distr(0, parser.all_query.size()); // define the range
  for (uint64_t j = 0; j < parser.all_query.size(); j++)
  {
    auto key_to_find = parser.all_query[distr(gen)].key;
    auto start_time = std::chrono::high_resolution_clock::now();
    uint64_t total_time = 0;
    struct node *search = start[key_to_find % FLAGS_num_lists];
    int count = 0;
    while (search->next != NULL && search->key != key_to_find)
    {
      count++;
      total_result[thread_id] += search->value;
      search = search->next;
    }
    auto end_time = std::chrono::high_resolution_clock::now();
    total_time += static_cast<uint64_t>(
        std::chrono::duration_cast<std::chrono::nanoseconds>(end_time -
                                                             start_time)
            .count());
    result[thread_id][j] = total_time;
  }
  LOG(log_level::info) << "Stopping function at thread_id: " << thread_id;
}

int main(int argc, char *argv[])
{
  gflags::ParseCommandLineFlags(&argc, &argv, true);
  std::ifstream data_stream(FLAGS_data_filepath);
  parser.read_all_keys(data_stream, FLAGS_num_keys);
  LOG(log_level::info) << "key loaded: " << parser.all_keys.size();
  std::ifstream query_stream(FLAGS_query_filepath);
  parser.read_all_query(query_stream, FLAGS_num_queries);
  LOG(log_level::info) << "query loaded: " << parser.all_query.size();
  start.resize(FLAGS_num_lists);
  cur.resize(FLAGS_num_lists);
  prev_node.resize(FLAGS_num_lists);
  int j = 0;
  for (; j < FLAGS_num_lists; j++)
  {
    start[j] = new node;
    prev_node[j] = start[j];
  }
  for (j = 0; j < parser.all_keys.size(); j++)
  {
    uint64_t list_id = parser.all_keys[j] % FLAGS_num_lists;
    cur[list_id] = new node;
    cur[list_id]->key = parser.all_keys[j];
    cur[list_id]->value = 1;
    prev_node[list_id]->next = cur[list_id];
    prev_node[list_id] = cur[list_id];
  }
  LOG(log_level::info) << "keys are inserted";

  std::vector<std::thread> thread_vec;
  result.resize(FLAGS_num_threads);
  total_result.resize(FLAGS_num_threads);
  auto start_time = std::chrono::high_resolution_clock::now();
  for (int i = 0; i < FLAGS_num_threads; i++)
  {
    result[i].resize(parser.all_query.size());
    std::thread t(func, i);
    bind_to_core(t, 0, i);
    thread_vec.push_back(std::move(t));
  }
  for (auto &t : thread_vec)
  {
    t.join();
  }
  auto end_time = std::chrono::high_resolution_clock::now();
  auto total_time = static_cast<uint64_t>(
      std::chrono::duration_cast<std::chrono::nanoseconds>(end_time -
                                                           start_time)
          .count());
  uint64_t average_latency = 0;
  for (int i = 0; i < FLAGS_num_threads; i++)
  {
    for (int j = 0; j < parser.all_query.size(); j++)
    {
      //  // cout << "Thread[" << i << "] List[" << j << "]: " << result[i][j]
      //  //      << " nanoseconds" << std::endl;
      average_latency += result[i][j];
    }
    LOG(log_level::info) << "result is: " << total_result[i];
  }
  LOG(log_level::info) << "Average latency is: "
                       << average_latency / FLAGS_num_threads / parser.all_query.size();
  LOG(log_level::info) << "Total execution time: " << total_time;

  return 0;
}