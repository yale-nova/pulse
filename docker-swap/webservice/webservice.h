#include <iostream>
#include <string>
#include <cstdlib>
#include <cassert>
#include <cstdint>
#include <unistd.h>
#include <signal.h>
#include <cstdio>
#include <gflags/gflags.h>
#include "ds/datastructure/hashtable.h"
#include "ds/parser/rpc_parse.h"
#include "ds/utils/time_util.h"
#include "ds/utils/rand_util.h"
#include "ds/utils/core_util.h"
#include "ds/utils/logger.h"
#include "ds/utils/memory_util.h"
#include "../common.h"
#include "crypto.h"
#include "snappy.h"

// crypto++
#include <cryptopp/aes.h>
#include <cryptopp/modes.h>
#include <cryptopp/filters.h>
#include <cryptopp/base64.h>

static constexpr uint64_t kAppMaxData = (32ULL * 1024 * 1024 * 1024) / 8 / 1024 * 4 / 10;

// Gflags
using namespace pc::parser;
using namespace pc::utils;

DEFINE_uint64(num_keys, 0, "Number of keys");
DEFINE_uint64(num_queries, 0, "Number of queries");
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbc_query_test", "Query file");

std::vector<std::vector<pc::parser::query>> split_queries;
pc::datastructure::hashtable::HashTable ht(67108864, 2);
RpcParse parser;

struct EightKB
{
    char data[8192]; // 8KB of data
};

struct EightKB *data = new struct EightKB[kAppMaxData];

std::vector<std::vector<pc::parser::query>> split(const std::vector<pc::parser::query> &v, int Nsplit)
{
    int n = v.size();
    int size_max = n / Nsplit + (n % Nsplit != 0);
    std::vector<std::vector<pc::parser::query>> split;
    for (int ibegin = 0; ibegin < n; ibegin += size_max)
    {
        int iend = ibegin + size_max;
        if (iend > n)
            iend = n;
        split.emplace_back(std::vector<pc::parser::query>(v.begin() + ibegin, v.begin() + iend));
    }
    return split;
}

void prepare(bool verbose = false)
{
    std::ifstream data_stream(FLAGS_data_filepath);
    auto start = get_time();
    parser.read_all_keys(data_stream, FLAGS_num_keys);
    auto end_1 = get_time();
    LOG(log_level::info) << "Takes " << (end_1 - start) / 1000 / 1000 / 1000 << " seconds to read keys to memory";
    for (int i = 0; i < FLAGS_num_keys; ++i)
    {
        std::string value = gen_random(8);
        ht.insert(std::make_pair(parser.all_keys[i], value.c_str()));
    }
    auto end_2 = get_time();
    LOG(log_level::info) << "Takes " << (end_2 - end_1) / 1000 / 1000 / 1000 << " seconds to insert to Hashtable ";

    if (verbose)
    {
        collect_memory_stat();
        LOG(log_level::info) << "Current virtual memory used by process is: " << virtual_memory_used_process();
        auto end_3 = get_time();
        ht.print_statistics();
        auto end_4 = get_time();
        LOG(log_level::info) << "Print statistic takes " << (end_4 - end_3) / 1000 / 1000 / 1000 << " seconds ";
    }
    auto end_5 = get_time();
    parser.clear_keys();
    auto end_6 = get_time();
    LOG(log_level::info) << "Clearing key takes " << (end_6 - end_5) / 1000 / 1000 / 1000 << " seconds ";
}

void consume(std::string plaintext)
{
    std::string key = "sixteen-password";
    std::string iv = "";
    std::string ciphertext = encrypt(plaintext, key, iv, true);
    std::string compressed;
    snappy::Compress(ciphertext.c_str(), ciphertext.size(), &compressed);
    auto compressed_len = compressed.size();
    ACCESS_ONCE(compressed_len);
}

void read_and_split(int num_server_threads = 1)
{
    std::ifstream query_stream(FLAGS_query_filepath);
    auto end_3 = get_time();
    parser.read_all_query(query_stream, FLAGS_num_queries);
    auto end_4 = get_time();
    LOG(log_level::info) << "Takes " << (end_4 - end_3) / 1000 / 1000 / 1000 << " seconds to load queries ";
    split_queries = split(parser.all_query, num_server_threads);
}