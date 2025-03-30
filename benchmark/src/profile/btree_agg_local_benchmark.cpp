#include <string>
#include <sys/types.h>
#include <sys/sysinfo.h>
#include <unistd.h>
#include <stdio.h>
#include <signal.h>
#include <gflags/gflags.h>
#include <algorithm>

#include "ds/datastructure/bplustree.h"
#include "ds/parser/rpc_parse.h"
#include "ds/utils/rand_util.h"
#include "ds/utils/logger.h"
#include "../benchmark_utils.h"

using namespace std;
using namespace pc::datastructure;
using namespace pc::parser;
using namespace pc::utils;

DEFINE_uint64(num_keys, 0, "Number of keys");
DEFINE_uint64(num_queries, 0, "Number of queries");
DEFINE_uint64(agg_length, 1, "Aggregation length");
DEFINE_bool(print_layout, false, "Print layout or not");
DEFINE_bool(debug, false, "Debug flag");
DEFINE_bool(generator, true, "Use workload generator");
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbe_query_test", "Query file");
DEFINE_string(layout_filepath, "/var/data/bplustree_layout", "Layout file");


int main(int argc, char *argv[])
{
    gflags::ParseCommandLineFlags(&argc, &argv, true);
    BPlusTree tree("./");
    RpcParse parser;
    if(FLAGS_generator) {
        BtrdbWorkloadGenerator gen;
        auto end_1 = std::chrono::high_resolution_clock::now();
        for (uint64_t i = 0; i < FLAGS_num_keys; ++i)
        {
            std::string ctr= gen_random(7);
            tree.insert(gen.get_next(), const_cast<void *>(reinterpret_cast<const void *>(ctr.c_str())));
            if(i % 10000000 == 0) {
                LOG(log_level::info) << "Insert progress: " << i << " out of " << FLAGS_num_keys;
            }
        }
        auto end_2 = std::chrono::high_resolution_clock::now();
        LOG(log_level::info) << "Takes "
                             << static_cast<uint64_t>(
                                    std::chrono::duration_cast<std::chrono::nanoseconds>(
                                        end_2 - end_1)
                                        .count()) /
                                    FLAGS_num_keys
                             << " nanoseconds on average to insert a key";

    } else {
        std::ifstream data_stream(FLAGS_data_filepath);
        parser.read_all_keys(data_stream, FLAGS_num_keys, true);
        vector<string> ctr(FLAGS_num_keys);
        for (uint64_t i = 0; i < FLAGS_num_keys; ++i)
        {
            ctr[i] = gen_random(7);
        }
        auto end_1 = std::chrono::high_resolution_clock::now();
        for (uint64_t i = 0; i < FLAGS_num_keys; ++i)
        {
            tree.insert(parser.all_keys[i], const_cast<void *>(reinterpret_cast<const void *>(ctr[i].c_str())));
            if(i % 10000000 == 0) {
                LOG(log_level::info) << "Insert progress: " << i << " out of " << FLAGS_num_keys;
            }
        }
        auto end_2 = std::chrono::high_resolution_clock::now();
        LOG(log_level::info) << "Takes "
                             << static_cast<uint64_t>(
                                    std::chrono::duration_cast<std::chrono::nanoseconds>(
                                        end_2 - end_1)
                                        .count()) /
                                    FLAGS_num_keys
                             << " nanoseconds on average to insert a key";

    }

    tree.print_statistics();
    //tree.print_layout_node_only(FLAGS_layout_filepath);
    if(FLAGS_debug) {
        tree.print_layout_debug(FLAGS_layout_filepath);
    } else if(FLAGS_print_layout) {
        tree.print_layout_node_only(FLAGS_layout_filepath);
    } else {
        parser.clear_keys();
        std::ifstream query_stream(FLAGS_query_filepath);
        parser.read_all_query(query_stream, FLAGS_num_queries, true);

        std::vector<uint64_t> agg_length = {1000000000, 2000000000, 4000000000, 8000000000, 16000000000};
        for (uint64_t j = 0; j < agg_length.size(); j++) {
            uint64_t num_nodes = 0;
            uint64_t num_keys = 0;
            auto end_4 = std::chrono::high_resolution_clock::now();
            for (uint64_t i = 0; i < FLAGS_num_queries; i++)
            {
                long result;
            	auto stats = tree.aggregate_time_stat(parser.all_query[i].key, agg_length[j], result);
                //LOG(log_level::info) << "Total number of nodes traversed " << stats.first;
                //LOG(log_level::info) << "Total number of keys traversed " << stats.second;
                num_nodes += stats.first;
                num_keys += stats.second;
                //LOG(log_level::info) << "Current average for nodes traversed " << num_nodes / (i + 1);
                //LOG(log_level::info) << "Current average for keys traversed " << num_keys / (i + 1);
                if(i % 100000 == 0) {
                    LOG(log_level::info) << "Query progress: " << i << " out of " << FLAGS_num_queries;
                }
            }
            auto end_5 = std::chrono::high_resolution_clock::now();
            LOG(log_level::info) << "[" << agg_length[j] << "] Takes "
                                 << static_cast<uint64_t>(
                                        std::chrono::duration_cast<std::chrono::nanoseconds>(
                                            end_5 - end_4)
                                            .count()) /
                                        1000 / 1000 / 1000
                                 << " seconds to run query.";
            LOG(log_level::info) << "[" << agg_length[j] << "] Average number of nodes traversed: " << num_nodes / FLAGS_num_queries;
            LOG(log_level::info) << "[" << agg_length[j] << "] Average number of keys traversed: " << num_keys / FLAGS_num_queries;
        }
    }

    return 0;
}

