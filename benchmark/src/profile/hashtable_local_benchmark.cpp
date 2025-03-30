
#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <unistd.h>
#include <stdio.h>
#include <signal.h>

#include "ds/utils/rand_util.h"
#include "ds/datastructure/hashtable.h"
#include "ds/parser/rpc_parse.h"
#include "ds/utils/logger.h"
#include "../benchmark_utils.h"

using namespace pc::parser;
using namespace pc::utils;

DEFINE_uint64(num_keys, 0, "Number of keys");
DEFINE_uint64(num_queries, 0, "Number of queries");
DEFINE_uint64(capacity, 4096, "Initial capacity of the hashtable");
DEFINE_bool(full_layout, false, "Generate full layout");
DEFINE_bool(bucket_layout, false, "Generate bucket layout");
DEFINE_uint64(max_load_factor, 2, "Max load factor of the hashtable");
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbc_query_test", "Query file");
DEFINE_string(bucket_layout_path, "/var/data/hashtable_bucket_layout", "Path for full bucket layout dump");
DEFINE_string(full_layout_path, "/var/data/hashtable_layout", "Path for full layout dump");

int main(int argc, char **argv)
{
  gflags::ParseCommandLineFlags(&argc, &argv, true);
  LOG(log_level::info) << "The local benchmark for hashtable, the number of keys: " << FLAGS_num_keys << " the number of num_queries: " << FLAGS_num_queries << " the capacity: " << FLAGS_capacity << " the max_load_factor is: " << FLAGS_max_load_factor;
  pc::datastructure::hashtable::HashTable ht(FLAGS_capacity, FLAGS_max_load_factor, FLAGS_full_layout_path, FLAGS_bucket_layout_path);
  RpcParse parser;
  std::ifstream data_stream(FLAGS_data_filepath);
  uint64_t num_keys = FLAGS_num_keys;
  auto start_time_0 = std::chrono::high_resolution_clock::now();
  parser.read_all_keys(data_stream, num_keys);
  auto end_time_1 = std::chrono::high_resolution_clock::now();
  std::cout << "Takes "
            << static_cast<uint64_t>(
                   std::chrono::duration_cast<std::chrono::nanoseconds>(
                       end_time_1 - start_time_0)
                       .count()) /
                   1000 / 1000 / 1000
            << " seconds to read keys to memory" << std::endl;
  for (uint64_t i = 0; i < num_keys; ++i)
  {
    std::string value = gen_random(7);
    ht.insert(std::make_pair(parser.all_keys[i], value.c_str()));
  }
  auto end_time_2 = std::chrono::high_resolution_clock::now();
  std::cout << "Takes "
            << static_cast<uint64_t>(
                   std::chrono::duration_cast<std::chrono::nanoseconds>(
                       end_time_2 - end_time_1)
                       .count()) /
                   1e9
            << " seconds to insert all key" << std::endl;
  std::cout << "Takes "
            << static_cast<uint64_t>(
                   std::chrono::duration_cast<std::chrono::nanoseconds>(
                       end_time_2 - end_time_1)
                       .count()) /
                   num_keys
            << " nanoseconds on average to insert a key" << std::endl;

  ht.print_statistics();
  if (FLAGS_full_layout)
  {
    ht.print_layout();
  }
  if (FLAGS_bucket_layout)
  {
    ht.print_bucket_layout();
    LOG(log_level::info) << "Bucket layout printed";
  }
  parser.clear_keys();

  std::ifstream query_stream(FLAGS_query_filepath);
  uint64_t num_queries = FLAGS_num_queries;
  parser.read_all_query(query_stream, num_queries);
  auto end_time_3 = std::chrono::high_resolution_clock::now();
  std::cout << "Takes "
            << static_cast<uint64_t>(
                   std::chrono::duration_cast<std::chrono::nanoseconds>(
                       end_time_3 - end_time_2)
                       .count()) /
                   1000 / 1000 / 1000
            << " seconds to read all queries: " << parser.all_query.size() << std::endl;

  uint64_t total_time = 0;
  std::vector<uint64_t> lat_vec;
  // uint64_t total_value = 0;
  // int pid= getpid();
  // int cpid = fork();

  // if( cpid == 0)
  //{
  //     // child process .  Run your perf stat
  //     char buf[50];
  //     sprintf(buf, "perf stat -p %d   > stat.log 2>&1",pid);
  //     execl("/bin/sh", "sh", "-c", buf, NULL);
  // }
  // else
  //{
  //  set the child the leader of its process group
  // setpgid(cpid, 0);

  for (uint64_t i = 0; i < num_queries; i++)
  {
    auto key_to_find = parser.all_query[i].key;
    auto start_time = std::chrono::high_resolution_clock::now();
    auto result = ht.find(key_to_find, false);
    ACCESS_ONCE(result);

    // total_value += *(static_cast<uint64_t *>(result.get_value()));
    auto end_time = std::chrono::high_resolution_clock::now();
    total_time += static_cast<uint64_t>(
        std::chrono::duration_cast<std::chrono::nanoseconds>(end_time -
                                                             start_time)
            .count());
    lat_vec.push_back(static_cast<uint64_t>(std::chrono::duration_cast<std::chrono::nanoseconds>(end_time -
                                                                                                 start_time)
                                                .count()));
  }
  uint64_t max = *max_element(lat_vec.begin(), lat_vec.end());
  uint64_t min = *min_element(lat_vec.begin(), lat_vec.end());
  std::cout << "Takes " << total_time / num_queries
            << " nanoseconds on each query in average " << std::endl;
  std::cout << "Max is: " << max << std::endl;
  std::cout << "Min is: " << min << std::endl;

  ////////////////////////////////////////////////////////////////
  // stop perf stat by killing child process and all its descendants(sh, perf stat etc )
  // kill(-cpid, SIGINT);
  ////////////////////////////////////////////////////////////////////
  // }

  return 0;
}
