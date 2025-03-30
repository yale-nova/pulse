#include "pulse_cache.h"




WebServiceCache::WebServiceCache(size_t capacity_in_bytes) : cache_data(capacity_in_bytes / (sizeof(uint64_t) + sizeof(EightKB))) {
}

void WebServiceCache::put(const uint64_t& key, const struct EightKB& value) {
    cache_data.put(key, value);
}

void WebServiceCache::erase(const uint64_t& key) {
    cache_data.erase(key);
}

const struct EightKB* WebServiceCache::get(const uint64_t& key) {
    if(cache_data.exists(key))
        return &(cache_data.get_after_access());
    else
        return NULL;
}


WiredTigerCache::WiredTigerCache(size_t capacity_in_bytes) : cache_data(capacity_in_bytes / (sizeof(uint64_t) + sizeof(struct ScanAndResult))) {
}

void WiredTigerCache::put(const uint64_t &key, const uint64_t &scan_length, const uint64_t &result) 
{
    struct ScanAndResult tmp;
    tmp.scan_length = scan_length;
    tmp.result = result;
    cache_data.put(key, tmp);
}
uint64_t WiredTigerCache::get(const uint64_t &key, const uint64_t &scan_length)
{

    if(cache_data.exists(key)) {
        auto result = cache_data.get_after_access(); 
        if(result.scan_length == scan_length) {
            return result.result;
        } else {
            // FIXME this can be improved
            return 0;
        }
    } else {
        return 0;
    }
}
void WiredTigerCache::erase(const uint64_t& key) {
    cache_data.erase(key);
}


BtrDBCache::BtrDBCache(size_t capacity_in_bytes) : cache_data(capacity_in_bytes / (sizeof(uint64_t) + sizeof(struct ScanAndResult))) {
}

void BtrDBCache::put(const uint64_t &key, const uint64_t &scan_length, const uint64_t &result) 
{
    struct ScanAndResult tmp;
    tmp.scan_length = scan_length;
    tmp.result = result;
    cache_data.put(key, tmp);
}
uint64_t BtrDBCache::get(const uint64_t &key, const uint64_t &scan_length)
{

    if(cache_data.exists(key)) {
        auto result = cache_data.get_after_access(); 
        if(result.scan_length == scan_length) {
            return result.result;
        } else {
            // FIXME this can be improved
            return 0;
        }
    } else {
        return 0;
    }
}
