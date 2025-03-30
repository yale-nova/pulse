#include <string>
#include <sys/types.h>
#include <unordered_map>
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
DEFINE_bool(print_layout, false, "Print layout or not");
DEFINE_bool(debug, false, "Debug flag");
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbe_query_test", "Query file");
DEFINE_string(layout_filepath, "/var/data/bplustree_layout", "Layout file");

int main(int argc, char *argv[])
{
    gflags::ParseCommandLineFlags(&argc, &argv, true);
    BPlusTree tree("./");
    std::ifstream data_stream(FLAGS_data_filepath);
    RpcParse parser;
    parser.preallocate_key_entries(FLAGS_num_keys);
    parser.read_all_keys(data_stream, FLAGS_num_keys);
    vector<string> ctr(FLAGS_num_keys);
    for (uint64_t i = 0; i < FLAGS_num_keys; ++i)
    {
        ctr[i] = gen_random(6);
    }
    auto end_1 = std::chrono::high_resolution_clock::now();
    for (uint64_t i = 0; i < FLAGS_num_keys; ++i)
    {
        tree.insert(parser.all_keys[i], const_cast<void *>(reinterpret_cast<const void *>(ctr[i].c_str())));
        if (i % 10000000 == 0)
        {
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

    tree.print_statistics();
    if (FLAGS_debug)
    {
        tree.print_layout_debug(FLAGS_layout_filepath);
    }
    else if (FLAGS_print_layout)
    {
        tree.print_layout_node_only(FLAGS_layout_filepath);
    }
    else
    {
        parser.clear_keys();

        auto end_3 = std::chrono::high_resolution_clock::now();
        LOG(log_level::info) << "Takes "
                             << static_cast<uint64_t>(
                                    std::chrono::duration_cast<std::chrono::nanoseconds>(
                                        end_3 - end_2)
                                        .count()) /
                                    1000 / 1000 / 1000
                             << " seconds to generate B+Tree layout.";

        std::ifstream query_stream(FLAGS_query_filepath);
        parser.read_all_query(query_stream, FLAGS_num_queries);
        std::unordered_map<uint64_t, uint64_t> num_nodes;
        std::unordered_map<uint64_t, uint64_t> num_keys;
        std::unordered_map<uint64_t, uint64_t> query_count;
        for (uint64_t i = 0; i < FLAGS_num_queries; i++)
        {
            std::vector<struct bplustree_entry> result;
            auto stats = tree.scan_stat(parser.all_query[i].key, parser.all_query[i].scan_len, result);
            // LOG(log_level::info) << "Total number of nodes traversed " << stats.first;
            // LOG(log_level::info) << "Total number of keys traversed " << stats.second;
            if (num_nodes.find(parser.all_query[i].scan_len) != num_nodes.end())
            {
                num_nodes[parser.all_query[i].scan_len] += stats.first;
            }
            else
            {
                num_nodes[parser.all_query[i].scan_len] = stats.first;
            }
            if (num_keys.find(parser.all_query[i].scan_len) != num_keys.end())
            {
                num_keys[parser.all_query[i].scan_len] += stats.second;
            }
            else
            {
                num_keys[parser.all_query[i].scan_len] = stats.second;
            }
            if (query_count.find(parser.all_query[i].scan_len) != query_count.end())
            {
                query_count[parser.all_query[i].scan_len] += 1;
            }
            else
            {
                query_count[parser.all_query[i].scan_len] = 1;
            }
            // LOG(log_level::info) << "Scan length: " << parser.all_query[i].scan_len << " average number of nodes traversed: " << num_nodes[parser.all_query[i].scan_len];
            // LOG(log_level::info) << "Scan length: " << parser.all_query[i].scan_len << " average number of keys traversed: " << num_keys[parser.all_query[i].scan_len];
            //  Progress report
            if (i % 100000 == 0)
            {
                LOG(log_level::info) << "Query progress: " << i << " out of " << FLAGS_num_queries;
            }
        }
        auto end_4 = std::chrono::high_resolution_clock::now();
        LOG(log_level::info) << "Takes "
                             << static_cast<uint64_t>(
                                    std::chrono::duration_cast<std::chrono::nanoseconds>(
                                        end_4 - end_3)
                                        .count()) /
                                    1000 / 1000 / 1000
                             << " seconds to run query.";
        for (const auto &pair : num_nodes)
        {
            LOG(log_level::info) << "Scan length: " << pair.first << " average number of nodes traversed: " << pair.second / query_count[pair.first];
            LOG(log_level::info) << "Scan length: " << pair.first << " average number of keys traversed: " << num_keys[pair.first] / query_count[pair.first];
        }
    }

    return 0;
}
