#include "ds/datastructure/bplustree.h"
#include "ds/serde/bplustree_serde.h"
#include "ds/parser/rpc_parse.h"
#include "ds/utils/logger.h"
#include "../benchmark_utils.h"


using namespace pc::datastructure;
using namespace pc::serde;
using namespace pc::parser;
using namespace pc::utils;


int main() {
    RpcParse parse;
    BtrdbWorkloadGenerator key_gen;

    for(int i = 0; i < 1000000; i++) {
      uint64_t key;
      if(i % 100000 == 0) {
        LOG(log_level::info) << "Progress" << i;
      }
      for(int j = 0; j < 10000; j++) {
        key = key_gen.get_next();
      }
      struct query q;
      q.key = key;
      parse.all_query.push_back(q);
    }
    //std::ifstream query_stream("/var/data/yupeng/ycsbe_query_1");
    //std::ifstream query_stream("/var/data/yupeng/btrdb_query_1");
    //parse.read_all_query(query_stream, 1000000);
    //BPlusTree* bt = new BplustreeSerde("/var/data/yupeng/bplustree_layout_1", 1); // TODO FIXME
    BPlusTree* bt = new BplustreeSerde("/var/data/yupeng/btrdb_layout_1", 1); // TODO FIXME
    //bt->print_layout_node_only("./log");
    for(size_t i = 0; i < parse.all_query.size(); i++) {
        //std::vector<struct bplustree_entry> result;
        long result;
        auto stat = bt->aggregate_time(parse.all_query[i].key, 1000000000, result);
        LOG(log_level::info) << "result: " << result << " stat: " << stat;
    }
    return 0;
}