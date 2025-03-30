#include "wiredtiger.h"
#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
#include <cassert>
#include <cstdint>
#include <unistd.h>
#include <signal.h>
#include <cstdio>
#include <gflags/gflags.h>
#include "ds/parser/rpc_parse.h"
#include "ds/utils/time_util.h"
#include "ds/utils/rand_util.h"
#include "ds/utils/core_util.h"
#include "ds/utils/logger.h"
#include "ds/utils/memory_util.h"
#include "../common.h"
#include "extension.h"

using namespace pc::parser;

RpcParse parser;

DEFINE_uint64(num_keys, 0, "Number of keys");
DEFINE_uint64(num_queries, 0, "Number of queries");
DEFINE_bool(verbose, false, "Verbose output");
DEFINE_bool(insert_only, false, "Only insert data");
DEFINE_string(db_filepath, "/home/yupeng/db", "db path");
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbc_query_test", "Query file");
DEFINE_string(wiredtiger_open_config, "create,in_memory=true", "WiredTiger configuration");
DEFINE_string(wiredtiger_table_name, "table:mytable", "WiredTiger table name");
DEFINE_string(wiredtiger_data_format, "key_format=Q,value_format=S", "WiredTiger key and value format");

int main(int argc, char **argv)
{

    gflags::ParseCommandLineFlags(&argc, &argv, true);

    WT_CONNECTION *conn;
    WT_SESSION *session;

    int ret;
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

    std::ifstream data_stream(FLAGS_data_filepath);
    auto start = get_time();
    parser.read_all_keys(data_stream, FLAGS_num_keys);
    auto end_1 = get_time();
    LOG(log_level::info) << "Takes " << (end_1 - start) / 1000 / 1000 / 1000 << " seconds to read " << parser.all_keys.size() << " keys to memory";
    for (uint64_t i = 0; i < FLAGS_num_keys; ++i)
    {
        std::string value = gen_random(8);
        // LOG(log_level::info) << "Inserting key: " << parser.all_keys[i] << " string length is: " << strlen(value.c_str());
        cursor->set_key(cursor, parser.all_keys[i]);
        // LOG(log_level::info) << "Key set";
        cursor->set_value(cursor, value.c_str());
        // LOG(log_level::info) << "Value set";
        ret = cursor->insert(cursor);
        if (ret != 0)
        {
            LOG(log_level::info) << "Error inserting data: " << ret;
        }
        if (i % 10000000 == 0)
        {
            LOG(log_level::info) << "Insert progress: " << i << " out of " << FLAGS_num_keys;
        }
    }
    auto end_2 = get_time();
    // ret = session->commit_transaction(session, NULL);
    // if (ret != 0)
    //{
    //    LOG(log_level::info) << "Error committing transaction: " << ret;
    //}
    LOG(log_level::info) << "Takes " << (end_2 - end_1) / 1000 / 1000 / 1000 << " seconds to insert to WiredTiger.";
    parser.clear_keys();
    std::string logFilePath = "/var/run/wiredtiger.log";

    // Open a file in write mode.
    std::ofstream outfile(logFilePath, std::ios::out);

    if (FLAGS_insert_only)
    {
        tree.print_statistics();
        sleep(60);
    }
    else
    {
        std::ifstream query_stream(FLAGS_query_filepath);
        auto end_3 = get_time();
        parser.read_all_query(query_stream, FLAGS_num_queries);
        auto end_4 = get_time();
        LOG(log_level::info) << "Takes " << (end_4 - end_3) / 1000 / 1000 / 1000 << " seconds to load " << parser.all_query.size() << " queries.";

        uint64_t get_count = 0;
        uint64_t ptr_chasing_time = 0;
        uint64_t non_ptr_chasing_time = 0;
        for (uint64_t i = 0; i < FLAGS_num_queries; i++)
        {
            auto end_5 = get_time();
            cursor->set_key(cursor, parser.all_query[i].key);
            if (FLAGS_verbose)
            {
                LOG(log_level::info) << "Scan length: " << parser.all_query[i].scan_len;
            }
            ret = cursor->search_near(cursor, reinterpret_cast<int *>(&parser.all_query[i].scan_len));
            auto end_6 = get_time();
            std::string value = gen_random(parser.all_query[i].scan_len * 8);
            outfile << value << "\n";
            auto end_7 = get_time();
            ptr_chasing_time += end_6 - end_5;
            non_ptr_chasing_time += end_7 - end_6;
            if (ret != 0)
            {
                // const char *value;
                // cursor->get_value(cursor, &value);
                get_count++;
                if (FLAGS_verbose)
                {
                    LOG(log_level::info) << "Key: " << parser.all_query[i].key << " found, the count is: " << ret;
                }
            }
            else
            {
                LOG(log_level::info) << "Key: " << parser.all_query[i].key << " not found";
            }
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
        LOG(log_level::info) << "[0]"
                             << " Takes " << (end_8 - end_4) / 1e9 << " seconds to execute queries " << FLAGS_query_filepath;
        LOG(log_level::info) << "[0]"
                             << " Pointer chasing takes: " << ptr_chasing_time << " nanoseconds to execute queries ";
        LOG(log_level::info) << "[0]"
                             << " Non pointer chasing takes: " << non_ptr_chasing_time << " nanoseconds to execute queries ";

        cursor->close(cursor);
        session->close(session, NULL);
        ret = conn->close(conn, NULL);
        if (ret != 0)
        {
            LOG(log_level::info) << "WiredTiger close failed";
        }
    }

    return 0;
}
