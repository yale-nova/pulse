#ifndef PC_DS_SERDE_SLAB_ALLOCATOR_H
#define PC_DS_SERDE_SLAB_ALLOCATOR_H
#include <sys/mman.h>
#include <iostream>
#include <cassert>
#include <unistd.h>
#include "ds/utils/logger.h"

using namespace std;
using namespace pc::utils;



class SlabAllocator {
public:
    SlabAllocator() {}
    SlabAllocator(uint64_t start_addr, uint64_t size) {
        success_ = false;
        start_addr_ = start_addr;
        size_ = size;
        void* addr = mmap(reinterpret_cast<void*>(start_addr_), size_, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        if (addr == MAP_FAILED) {
            perror("mmap");
            return;
        }
        LOG(log_level::info) << "Desired address is: " << reinterpret_cast<void*>(start_addr_);
        LOG(log_level::info) << "Real address is: " << addr;
        LOG(log_level::info) << "Allocation size is: " << size / 1024/1024/1024;
        offset_ = reinterpret_cast<int64_t>(addr) - static_cast<int64_t>(start_addr_);
        LOG(log_level::info) << "Offset is: " << offset_;
        success_ = true;
    }
    SlabAllocator(void* start_addr, uint64_t size) {
        success_ = false;
        start_addr_ = reinterpret_cast<uint64_t>(start_addr);
        size_ = size;
        void* addr = mmap(reinterpret_cast<void*>(start_addr_), size_, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        if (addr == MAP_FAILED) {
            perror("mmap");
            return;
        }
        LOG(log_level::info) << "Desired address is: " << start_addr;
        LOG(log_level::info) << "Real address is: " << addr;
        LOG(log_level::info) << "Allocation size is: " << size / 1024/1024/1024;
        offset_ = reinterpret_cast<int64_t>(addr) - reinterpret_cast<int64_t>(start_addr);
        LOG(log_level::info) << "Offset is: " << offset_;
        success_ = true;
    }
    ~SlabAllocator() {
        if(success_ == true) {
            munmap(reinterpret_cast<void*>(start_addr_), size_);
        }
    }
    int64_t get_offset() {
        return offset_;
    }
    bool is_success() {
        return success_;
    }


private:
    uint64_t start_addr_;
    uint64_t size_;
    int64_t offset_;
    bool success_;

};
#endif //PC_DS_SERDE_SLAB_ALLOCATOR_H