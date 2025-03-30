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
#include "ds/datastructure/bplustree.h"
#include "ds/datastructure/partitionedbplustree.h"
#include "ds/datastructure/hashtable.h"

#include <wiredtiger.h>

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
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbc_query_test", "Query file");
struct EightKB
{
  char data[8192]; // 8KB of data
};

static constexpr size_t kAppMaxData = 1024 * 1024 / 8;

class ServerContext : public BasicAppContext
{
public:
  //  Tracking
  static hashtable::HashTable ht;
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
hashtable::HashTable ServerContext::ht;

class WiredTigerClientContext : public ClientContext
{
public:
  // moodycamel::ReaderWriterQueue<EightKB> q;
  moodycamel::BlockingReaderWriterCircularBuffer<EightKB> circular_q;
  WiredTigerClientContext() //: q(100000),
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