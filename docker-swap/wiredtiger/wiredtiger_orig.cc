#include "wiredtiger.h"
#include <iostream>
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

using namespace pc::parser;
using namespace pc::utils;

RpcParse parser;

DEFINE_uint64(num_keys, 0, "Number of keys");
DEFINE_uint64(num_queries, 0, "Number of queries");
DEFINE_uint64(num_threads, 1, "Number of threads");
DEFINE_string(db_filepath, "/home/yupeng/db", "db path");
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbc_query_test", "Query file");
DEFINE_string(wiredtiger_open_config, "create,in_memory=true", "WiredTiger configuration");
DEFINE_string(wiredtiger_table_name, "table:mytable", "WiredTiger table name");
DEFINE_string(wiredtiger_data_format, "key_format=Q,value_format=S", "WiredTiger key and value format");

int main(int argc, char **argv)
{
    gflags::ParseCommandLineFlags(&argc, &argv, true);
    LOG(log_level::info) << "Running wiredtiger with " << FLAGS_num_keys << " keys and " << FLAGS_num_queries << " queries.";
    int ret;
    WT_CONNECTION *conn;
    ret = wiredtiger_open(FLAGS_db_filepath.c_str(), NULL, FLAGS_wiredtiger_open_config.c_str(), &conn);
    WT_SESSION *session;
    ret = conn->open_session(conn, NULL, NULL, &session);
    ret = session->create(session, FLAGS_wiredtiger_table_name.c_str(), FLAGS_wiredtiger_data_format.c_str());
    ret = session->begin_transaction(session, NULL);
    WT_CURSOR *cursor;
    ret = session->open_cursor(session, FLAGS_wiredtiger_table_name.c_str(), NULL, NULL, &cursor);

    std::ifstream data_stream(FLAGS_data_filepath);
    auto start = get_time();
    parser.read_all_keys(data_stream, FLAGS_num_keys);
    auto end_1 = get_time();
    std::cout << "Takes " << (end_1 - start) / 1000 / 1000 / 1000 << " seconds to read " << parser.all_keys.size() << " keys to memory" << std::endl;
    for (int i = 0; i < FLAGS_num_keys; ++i)
    {
        std::string value = gen_random(8);
        // LOG(log_level::info) << "Inserting key: " << parser.all_keys[i] << " string length is: " << strlen(value.c_str());
        cursor->set_key(cursor, parser.all_keys[i]);
        cursor->set_value(cursor, value.c_str());
        ret = cursor->insert(cursor);
        if (ret != 0)
        {
            LOG(log_level::info) << "Error inserting data: " << ret;
        }
    }
    auto end_2 = get_time();
    ret = session->commit_transaction(session, NULL);
    if (ret != 0)
    {
        LOG(log_level::info) << "Error committing transaction: " << ret;
    }
    LOG(log_level::info) << "Takes " << (end_2 - end_1) / 1000 / 1000 / 1000 << " seconds to insert to WiredTiger.";

    std::ifstream query_stream(FLAGS_query_filepath);
    auto end_3 = get_time();
    parser.read_all_query(query_stream, FLAGS_num_queries);
    auto end_4 = get_time();
    LOG(log_level::info) << "Takes " << (end_4 - end_3) / 1000 / 1000 / 1000 << " seconds to load " << parser.all_query.size() << " queries.";

    uint64_t get_count = 0;
    auto end_5 = get_time();
    for (int i = 0; i < FLAGS_num_queries; i++)
    {
        cursor->set_key(cursor, parser.all_query[i].key);
        ret = cursor->search(cursor);
        if (ret == 0)
        {
            const char *value;
            cursor->get_value(cursor, &value);
            get_count++;
            // LOG(log_level::info) << "Key: " << parser.all_query[i].key << " found";
        }
        else
        {
            // LOG(log_level::info) << "Key: " << parser.all_query[i].key << " not found";
        }
    }
    auto end_6 = get_time();
    LOG(log_level::info) << "Takes " << (end_6 - end_5) / 1000 / 1000 / 1000 << " seconds to execute queries, found keys: " << get_count;
    LOG(log_level::info) << "Average latency: " << (end_6 - end_5) / FLAGS_num_queries;
    cursor->close(cursor);
    session->close(session, NULL);
    conn->close(conn, NULL);
    return 0;
}