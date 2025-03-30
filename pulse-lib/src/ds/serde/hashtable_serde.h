#ifndef PC_LIBPC_SERDE_HASHTABLE_SERDE_H
#define PC_LIBPC_SERDE_HASHTABLE_SERDE_H

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
#include "ds/datastructure/hashtable.h"
#include "ds/utils/rand_util.h"

using namespace pc::datastructure;
using namespace pc::utils;

namespace pc
{
    namespace serde
    {
        class Bplustree_Serde 
        {
        public:
            Bplustree_Serde() {}
        };

    }
}

#endif // PC_LIBPC_SERDE_HASHTABLE_SERDE_H