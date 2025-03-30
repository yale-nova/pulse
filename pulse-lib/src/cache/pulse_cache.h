#include <cassert>
#include <unordered_map>
#include <list>
#include <cstddef>
#include <stdexcept>

template <typename key_t, typename value_t>
class lru_cache
{
public:
    typedef typename std::pair<key_t, value_t> key_value_pair_t;
    typedef typename std::list<key_value_pair_t>::iterator list_iterator_t;

    lru_cache(size_t max_size) : _max_size(max_size)
    {
    }

    void put(const key_t &key, const value_t &value)
    {
        auto it = _cache_items_map.find(key);
        _cache_items_list.push_front(key_value_pair_t(key, value));
        if (it != _cache_items_map.end())
        {
            _cache_items_list.erase(it->second);
            _cache_items_map.erase(it);
        }
        _cache_items_map[key] = _cache_items_list.begin();

        if (_cache_items_map.size() > _max_size)
        {
            auto last = _cache_items_list.end();
            last--;
            _cache_items_map.erase(last->first);
            _cache_items_list.pop_back();
        }
    }

    void erase(const key_t &key)
    {
        auto it = _cache_items_map.find(key);
        if (it != _cache_items_map.end())
        {
            _cache_items_list.erase(it->second);
            _cache_items_map.erase(it);
        }
    }

    const value_t &get(const key_t &key)
    {
        auto it = _cache_items_map.find(key);
        if (it == _cache_items_map.end())
        {
            throw std::range_error("There is no such key in cache");
        }
        else
        {
            _cache_items_list.splice(_cache_items_list.begin(), _cache_items_list, it->second);
            return it->second->second;
        }
    }

    const value_t &get_after_access()
    {
        _cache_items_list.splice(_cache_items_list.begin(), _cache_items_list, last_access);
        return last_access->second;
    }

    bool exists(const key_t &key)
    {
        auto it = _cache_items_map.find(key);
        if (it != _cache_items_map.end())
        {
            last_access = it->second;
            return true;
        }
        else
        {
            return false;
        }
    }

    size_t size() const
    {
        return _cache_items_map.size();
    }

private:
    std::list<key_value_pair_t> _cache_items_list;
    std::unordered_map<key_t, list_iterator_t> _cache_items_map;
    size_t _max_size;
    list_iterator_t last_access;
};

struct EightKB
{
    char data[1024 * 8];
};

struct HalfKB
{
    char data[512 * 8];
};

class WebServiceCache
{
public:
    WebServiceCache(size_t capacity_in_bytes);
    void put(const uint64_t &key, const struct EightKB &value);
    void erase(const uint64_t &key);
    const struct EightKB *get(const uint64_t &key);

private:
    lru_cache<uint64_t, struct EightKB> cache_data;
};

struct ScanAndResult
{
    uint64_t scan_length;
    uint64_t result;
};

class WiredTigerCache
{
public:
    WiredTigerCache(size_t capacity_in_bytes);
    void put(const uint64_t &key, const uint64_t &scan_length, const uint64_t &result);
    uint64_t get(const uint64_t &key, const uint64_t &scan_length);
    void erase(const uint64_t &key);

private:
    lru_cache<uint64_t, struct ScanAndResult> cache_data;
};

class BtrDBCache
{
public:
    BtrDBCache(size_t capacity_in_bytes);
    void put(const uint64_t &key, const uint64_t &scan_length, const uint64_t &result);
    uint64_t get(const uint64_t &key, const uint64_t &scan_length);

private:
    lru_cache<uint64_t, struct ScanAndResult> cache_data;
};