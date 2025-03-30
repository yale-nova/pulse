#ifndef PC_LIBPC_SERDE_BPLUSTREE_SERDE_H
#define PC_LIBPC_SERDE_BPLUSTREE_SERDE_H

#include <iostream>
#include <fstream>
#include <streambuf>
#include <string>
#include <sstream>
#include <istream>
#include <climits>
#include <cassert>
#include <fcntl.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include "ds/datastructure/bplustree.h"
#include "ds/serde/slab_allocator.h"
#include "ds/utils/logger.h"
#include "ds/utils/rand_util.h"
#include <cmath>
#include <cstdint>

using namespace pc::datastructure;
using namespace pc::utils;

namespace pc
{
    namespace serde
    {
        class BplustreeSerde: public pc::datastructure::BPlusTree 
        {
        public:
            BplustreeSerde(const std::string& filename, int number_of_nodes, bool verbose=false);
            BplustreeSerde(const std::string& filename) : BPlusTree(filename.c_str()) {}
            void create_layout_node(uint64_t address, long _is_leaf, long nk, std::vector<uint64_t>& keys, std::vector<void*>& childrens, void* prev_pointer, void*next_pointer);
            SlabAllocator alloc_;
            BPlusTree* tree;

            uint64_t capacity;
            uint64_t address_range;
            uint64_t min_address;
            uint64_t max_address;
            uint64_t new_min_address;
            uint64_t new_max_address;
        };

    }
}

#endif // PC_LIBPC_SERDE_BPLUSTREE_SERDE_H