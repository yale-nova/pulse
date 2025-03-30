#include <pybind11/embed.h>
#include <vector>
#include <iostream>
#include <utility> // for std::pair
#include <gflags/gflags.h>

#include "ds/datastructure/bplustree.h"
#include "ds/parser/rpc_parse.h"
#include "ds/utils/logger.h"
#include "ds/utils/time_util.h"

namespace py = pybind11;
using namespace py::literals;
using namespace pc::datastructure;
using namespace pc::utils;
using namespace pc::parser;

RpcParse parser;

BPlusTree tree("./");

DEFINE_uint64(num_keys, 0, "Number of keys");
DEFINE_uint64(num_queries, 0, "Number of queries");
DEFINE_uint64(agg_length, 1, "Aggregation length");
DEFINE_bool(verbose, false, "Verbose output");
DEFINE_bool(agg_stats, false, "Get aggregation stats");
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbc_query_test", "Query file");
DEFINE_string(plotter_filepath, "/home/yupeng/pulse/docker-swap/btrdb/", "Plot file");
DEFINE_string(plot_name, "btrdb.png", "Plot name");

int main(int argc, char **argv)
{
    gflags::ParseCommandLineFlags(&argc, &argv, true);

    py::scoped_interpreter guard{}; // Start Python interpreter

    auto sys_module = py::module_::import("sys");
    auto path = sys_module.attr("path");
    path.attr("append")(FLAGS_plotter_filepath);
    auto plotter = py::module_::import("plotter");

    std::ifstream data_stream(FLAGS_data_filepath);
    auto start = get_time();
    parser.read_all_keys(data_stream, FLAGS_num_keys, true);
    auto end_1 = get_time();
    LOG(log_level::info) << "Takes " << (end_1 - start) / 1000 / 1000 / 1000 << " seconds to read " << parser.all_keys.size() << " keys to memory";
    for (uint64_t i = 0; i < FLAGS_num_keys; ++i)
    {
        std::string value = gen_random(8);
        tree.insert(parser.all_keys[i], const_cast<void *>(reinterpret_cast<const void *>(value.c_str())));
        if (i % 10000000 == 0)
        {
            LOG(log_level::info) << "Insert progress: " << i << " out of " << FLAGS_num_keys;
            if (FLAGS_agg_stats)
            {
                tree.print_statistics();
            }
        }
    }
    auto end_2 = get_time();
    LOG(log_level::info) << "Takes " << (end_2 - end_1) / 1000 / 1000 / 1000 << " seconds to insert to BTrDB.";

    parser.clear_keys();

    if (FLAGS_agg_stats)
    {
        tree.print_statistics();
        std::ifstream query_stream(FLAGS_query_filepath);
        parser.read_all_query(query_stream, FLAGS_num_queries, true);

        for (uint64_t i = 0; i < FLAGS_num_queries; i++)
        {
            long result;
            tree.aggregate_time_stat(parser.all_query[i].key, FLAGS_agg_length, result);
        }
    }
    else
    {
        std::ifstream query_stream(FLAGS_query_filepath);
        auto end_3 = get_time();
        parser.read_all_query(query_stream, FLAGS_num_queries, true);
        auto end_4 = get_time();
        LOG(log_level::info) << "Takes " << (end_4 - end_3) / 1000 / 1000 / 1000 << " seconds to load " << parser.all_query.size() << " queries.";

        uint64_t get_count = 0;
        uint64_t ptr_chasing_time = 0;
        uint64_t non_ptr_chasing_time = 0;
        for (uint64_t i = 0; i < FLAGS_num_queries; i++)
        {
            auto end_5 = get_time();
            long result;
            tree.aggregate_time(parser.all_query[i].key, FLAGS_agg_length, result);
            auto end_6 = get_time();
            plotter.attr("add_point")(std::to_string(parser.all_query[i].key), result);
            auto end_7 = get_time();
            ptr_chasing_time += end_6 - end_5;
            non_ptr_chasing_time += end_7 - end_6;
            // Progress report
            if (i % 100000 == 0)
            {
                LOG(log_level::info) << "[Inter] Number of queries_per_thread: " << FLAGS_num_queries;
                LOG(log_level::info) << "[Inter] Pointer chasing takes: " << ptr_chasing_time / 1e9 << " seconds to execute queries ";
                LOG(log_level::info) << "[Inter] Non pointer chasing takes: " << non_ptr_chasing_time / 1e9 << " seconds to execute queries ";
                // Convert to double for floating-point division
                double p_double = static_cast<double>(ptr_chasing_time);
                double np_double = static_cast<double>(non_ptr_chasing_time);

                // Calculate the sum of the two numbers
                double total = p_double + np_double;

                // Calculate the percentage each number represents of the total
                double p_percentage = p_double / total;
                double np_percentage = np_double / total;

                // Output the percentages
                LOG(log_level::info) << "[Inter] Percentage for ptr chasing: " << p_percentage;
                LOG(log_level::info) << "[Inter] Percentage non ptr chasing: " << np_percentage;
            }
        }
        auto end_8 = get_time();
        plotter.attr("save_plot")(FLAGS_plot_name);
        auto end_9 = get_time();
        non_ptr_chasing_time += (end_9 - end_8);
        LOG(log_level::info) << "[0]"
                             << " Takes " << (end_9 - end_4) / 1e9 << " seconds to execute queries " << FLAGS_query_filepath;
        LOG(log_level::info) << "[0]"
                             << " Pointer chasing takes: " << ptr_chasing_time << " nanoseconds to execute queries ";
        LOG(log_level::info) << "[0]"
                             << " Non pointer chasing takes: " << non_ptr_chasing_time << " nanoseconds to execute queries ";
        double p_double = static_cast<double>(ptr_chasing_time);
        double np_double = static_cast<double>(non_ptr_chasing_time);

        // Calculate the sum of the two numbers
        double total = p_double + np_double;

        // Calculate the percentage each number represents of the total
        double p_percentage = p_double / total;
        double np_percentage = np_double / total;

        // Output the percentages
        LOG(log_level::info) << "[Final] Percentage for ptr chasing: " << p_percentage;
        LOG(log_level::info) << "[Final] Percentage non ptr chasing: " << np_percentage;
    }
    return 0;
}
