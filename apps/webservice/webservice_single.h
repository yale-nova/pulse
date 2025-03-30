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
#include "cache/pulse_cache.h"
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
DEFINE_string(data_filepath, "/var/data/ycsbc_key_test", "Data file");
DEFINE_string(query_filepath, "/var/data/ycsbc_query_test", "Query file");
DEFINE_uint64(capacity, 4096, "Initial capacity of the hashtable");
DEFINE_uint64(max_load_factor, 2, "Max load factor of the hashtable");


static constexpr uint64_t kAppMaxData = 1024 * 1024 / 8;
static constexpr uint64_t kCacheSize = 1024ULL * 1024 * 1024 * 2;
static constexpr uint64_t kMaxCoreNumber = 48;


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

class WebServiceClientContext : public ClientContext
{
public:
  // moodycamel::ReaderWriterQueue<EightKB> q;
  uint64_t cache_hit;
  WebServiceCache cache;
  moodycamel::BlockingReaderWriterCircularBuffer<EightKB> circular_q;
  WebServiceClientContext(uint64_t num_cache_elements) //: q(100000),
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
  uint64_t base;
  uint64_t ht;
};

// 8KB
struct Response
{
  char result[8192];
};

enum query_type {
  READ,
  UPDATE,
  INSERT
};
