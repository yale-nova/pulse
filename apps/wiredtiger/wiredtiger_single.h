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
#include "ds/datastructure/hashtable.h"
#include "ds/serde/bplustree_serde.h"
#include "cache/pulse_cache.h"

#include <wiredtiger.h>
#include "extension.h"

#include "concurrentqueue/readerwriterqueue.h"
#include "concurrentqueue/readerwritercircularbuffer.h"

using namespace pc;
using namespace pc::utils;
using namespace pc::datastructure;
using namespace pc::parser;
using namespace pc::serde;

static RpcParse input_parser;

// Gflags

DEFINE_uint64(resp_size, 8, "Size of the server's RPC response in bytes");
DEFINE_uint64(req_size, 0, "Request data size");
DEFINE_uint64(num_keys, 0, "Number of keys");
DEFINE_uint64(num_queries, 0, "Number of queries");
DEFINE_bool(init_with_layout, true, "Initialize the B+Tree with layout file");
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbc_query_test", "Query file");
DEFINE_string(db_filepath, "/home/yupeng/db", "db path");
DEFINE_string(layout_filepath, "/var/data/yupeng/bplustree_layout_1", "Layout path");
DEFINE_string(wiredtiger_open_config, "create,in_memory=true", "WiredTiger configuration");
DEFINE_string(wiredtiger_table_name, "table:mytable", "WiredTiger table name");
DEFINE_string(wiredtiger_data_format, "key_format=Q,value_format=S", "WiredTiger key and value format");

static constexpr uint64_t kAppMaxData = 1024ULL * 1024 * 16 / 8;
static constexpr uint64_t kCacheSize = 1024ULL * 1024 * 1024 * 2;
static constexpr uint64_t kMaxCoreNumber = 48;

uint64_t charToUint64(const char *input)
{
  uint64_t result;
  memcpy(&result, input, sizeof(result));
  return result;
}

class ServerContext : public BasicAppContext
{
public:
  //  Tracking
  static BPlusTree *bt;
  struct HalfKB *data;

  size_t num_resps = 0;
  size_t stat_rx_bytes_tot = 0;
  size_t stat_tx_bytes_tot = 0;
  ServerContext()
  {
    data = new struct HalfKB[kAppMaxData];
  }
  ~ServerContext()
  {
  }
};
BPlusTree *ServerContext::bt = nullptr;

struct Response;

class WiredTigerClientContext : public ClientContext
{
public:
  // moodycamel::ReaderWriterQueue<EightKB> q;
  uint64_t cache_hit;
  WiredTigerCache cache;
  moodycamel::BlockingReaderWriterCircularBuffer<Response> circular_q;
  WiredTigerClientContext(uint64_t num_cache_elements) //: q(100000),
      : circular_q(100000), cache(num_cache_elements)
  {
    cache_hit = 0;
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
  uint64_t scan_length;
  uint64_t ht;
};

// 8B
struct Response
{
  uint64_t result;
};

enum query_type
{
  SCAN,
  INSERT
};
