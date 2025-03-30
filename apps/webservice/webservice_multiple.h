#include "util/latency.h"
#include <signal.h>
#include <cstring>
#include "../apps_common.h"
#include "rpc.h"
#include "util/autorun_helpers.h"
#include "util/numautils.h"
#include "ds/parser/rpc_parse.h"
#include "ds/utils/logger.h"
#include "ds/utils/rand_util.h"
#include "ds/datastructure/hashtable.h"
#include "crypto.h"

// Snappy
#include "snappy.h"
// Crypto++
#include <cryptopp/aes.h>
#include <cryptopp/modes.h>
#include <cryptopp/filters.h>
#include <cryptopp/base64.h>

#include "concurrentqueue/readerwriterqueue.h"
#include "concurrentqueue/readerwritercircularbuffer.h"

using namespace pc;
using namespace pc::utils;
using namespace pc::datastructure;
using namespace pc::parser;

static RpcParse input_parser;

// Gflags

DEFINE_uint64(resp_size, 8, "Size of the server's RPC response in bytes");
DEFINE_uint64(req_size, 0, "Request data size");
DEFINE_uint64(num_keys, 0, "Number of keys");
DEFINE_uint64(num_queries, 0, "Number of queries");
DEFINE_uint64(capacity, 4096, "Initial capacity of the hashtable");
DEFINE_uint64(partitioned_capacity, 0, "Real capacity of this partition");
DEFINE_uint64(hash_bias, 0, "Start hash key");
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbc_query_test", "Query file");

struct EightKB
{
  char data[8192]; // 8KB of data
};

// In AIFM, 10GB total data, 6GB index data and 4GB value data
static constexpr uint64_t kAppMaxData = 1024 * 1024 / 8;

class ServerContext : public BasicAppContext
{
public:
  //  Tracking
  static hashtable::PartitionedHashTable ht;
  struct EightKB *data;

  size_t num_resps = 0;
  size_t stat_rx_bytes_tot = 0;
  size_t stat_tx_bytes_tot = 0;
  ServerContext()
  {
    data = new struct EightKB[kAppMaxData];
  }
  ~ServerContext()
  {
    delete data;
  }
};
hashtable::PartitionedHashTable ServerContext::ht = hashtable::PartitionedHashTable(FLAGS_capacity, FLAGS_partitioned_capacity, FLAGS_hash_bias);

class WebServiceClientContext : public ClientContext
{
public:
  // moodycamel::ReaderWriterQueue<EightKB> q;
  moodycamel::BlockingReaderWriterCircularBuffer<EightKB> circular_q;
  WebServiceClientContext() //: q(100000),
      : circular_q(100000)
  {
    // q = moodycamel::ReaderWriterQueue<EightKB>(100000);
    // circular_q = moodycamel::BlockingReaderWriterCircularBuffer<EightKB>(100000);
  }
};

enum data_structure_type
{
  hashtable,
  btree_agg,
  btree_scan
};

// 40 bytes
struct Request
{
  data_structure_type ds;
  uint64_t start_addr;
  key_type key;
  uint64_t base;
  uint64_t ht;
};

// 8KB
struct Response
{
  char result[8192];
};

uint64_t key_to_server(key_type key, uint32_t random)
{
  std::vector<uint64_t> partition_two{67108894, 134217727};
  std::vector<uint64_t> partition_three{89478366, 178956783, 268435455};
  std::vector<uint64_t> partition_four{67108369, 134216896, 201326012, 268435455};
  uint64_t hash = key % FLAGS_capacity;
  if (FLAGS_num_processes == 2)
  {
    if (hash >= 0 && hash < partition_two[0])
    {
      return random % (FLAGS_num_server_threads / FLAGS_num_processes);
    }
    else if (hash >= partition_two[0] < partition_two[1])
    {
      return random % (FLAGS_num_server_threads / FLAGS_num_processes) + FLAGS_num_server_threads / FLAGS_num_processes;
    }
  }
  else if (FLAGS_num_processes == 3)
  {
    if (hash >= 0 && hash < partition_two[0])
    {
      return random % (FLAGS_num_server_threads / FLAGS_num_processes);
    }
    else if (hash >= partition_two[0] < partition_two[1])
    {
      return random % (FLAGS_num_server_threads / FLAGS_num_processes) + FLAGS_num_server_threads / FLAGS_num_processes;
    }
    else if (hash >= partition_two[1] < partition_two[2])
    {
      return random % (FLAGS_num_server_threads / FLAGS_num_processes) + 2 * FLAGS_num_server_threads / FLAGS_num_processes;
    }
  }
  else if (FLAGS_num_processes == 4)
  {
    if (hash >= 0 && hash < partition_two[0])
    {
      return random % (FLAGS_num_server_threads / FLAGS_num_processes);
    }
    else if (hash >= partition_two[0] < partition_two[1])
    {
      return random % (FLAGS_num_server_threads / FLAGS_num_processes) + FLAGS_num_server_threads / FLAGS_num_processes;
    }
    else if (hash >= partition_two[1] < partition_two[2])
    {
      return random % (FLAGS_num_server_threads / FLAGS_num_processes) + 2 * FLAGS_num_server_threads / FLAGS_num_processes;
    }
    else if (hash >= partition_two[2] < partition_two[3])
    {
      return random % (FLAGS_num_server_threads / FLAGS_num_processes) + 3 * FLAGS_num_server_threads / FLAGS_num_processes;
    }
  }
};