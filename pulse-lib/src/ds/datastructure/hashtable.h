#ifndef PC_API_HASHTABLE_H
#define PC_API_HASHTABLE_H
#include <chrono>
#include <cstring>
#include <fstream>
#include <iostream>
#include <utility>
#include <vector>

#include "list.h"
#include "ds/utils/logger.h"

using namespace pc::utils;

namespace pc
{
  namespace datastructure
  {
    namespace hashtable
    {

      class HashTable;

      typedef uint64_t key_type;

#define DEFAULT_VALUE_LEN 8
#define PADDING_LENGTH 256 - 8 - 8 - 8 - 8
      class Node
      {
        friend class HashTable;
        friend class Iterator;
        friend class PartitionedHashTable;

        key_type key;
        char value[DEFAULT_VALUE_LEN];
        char padding[PADDING_LENGTH];

      public:
        Node *next;

        Node(std::pair<key_type, const char *> pr) : key(pr.first)
        {
          next = NULL;
          memcpy(value, pr.second, strlen(pr.second) + 1);
        }

        void update(const char *new_value)
        {
          memcpy(value, new_value, strlen(new_value) + 1);
        }

      public:
        bool operator==(Node other)
        {
          return (key == other.key && !strcmp(value, other.value));
        }
      };

      class Iterator
      {
        friend class HashTable;
        friend class PartitionedHashTable;

      protected:
        std::vector<list::List<Node *>> *lists;
        unsigned long index;
        list::List<Node *>::iterator itr;

        Iterator(std::vector<list::List<Node *>> *lists_, unsigned long index_,
                 list::List<Node *>::iterator itr_)
            : lists(lists_), index(index_), itr(itr_) {}

      public:
        Iterator &operator++()
        {
          ++itr;
          if (itr == (*lists)[index].end())
          {
            do
            {
              index++;
            } while (index < (*lists).size() &&
                     (*lists)[index].begin() == (*lists)[index].end());

            if (index == (*lists).size())
            {
              itr = NULL;
            }
            else
              itr = (*lists)[index].begin();
          }

          return *this;
        }

        bool operator==(Iterator other)
        {
          return lists == other.lists && index == other.index && itr == other.itr;
        }
        bool operator!=(Iterator other) { return !(*this == other); }

        std::pair<key_type, char *> operator*()
        {
          return std::make_pair((*itr)->key, (*itr)->value);
        }
        void *get_value() { return &((*itr)->value); }
      };

      class HashTableList
      {
      public:
        Node *cur;
        Node *start;
        Node *read_cur;
        HashTableList()
        {
          cur = NULL;
          start = NULL;
        }
        void push_back(Node *n)
        {
          if (start == NULL)
          {
            start = n;
            cur = n;
          }
          else
          {
            cur->next = n;
            cur = n;
          }
        }
        Node *read_from_start()
        {
          read_cur = start;
          // FIXME not used
          return NULL;
        }
        Node *read()
        {
          Node *ret = read_cur;
          if (read_cur != NULL)
            read_cur = read_cur->next;
          return ret;
        }
      };

      class HashTable
      {
        uint64_t size;
        uint64_t max_load_factor;
        uint64_t rehash_multiple;
        uint64_t capacity;
        std::vector<list::List<Node *>> lists;
        std::string full_layout_path;
        std::string bucket_layout_path;

      public:
        HashTable(uint64_t capacity, uint64_t max_load_factor)
        {
          size = 0;
          rehash_multiple = 2;
          this->max_load_factor = max_load_factor;
          this->capacity = capacity;
          lists = std::vector<list::List<Node *>>(capacity);
          full_layout_path = "/var/data/hashtable_layout";
          bucket_layout_path = "/var/data/hashtable_bucket_layout";
        }
        HashTable(uint64_t capacity, uint64_t max_load_factor, std::string full_layout_path, std::string bucket_layout_path)
        {
          size = 0;
          rehash_multiple = 2;
          this->max_load_factor = max_load_factor;
          this->capacity = capacity;
          this->full_layout_path = full_layout_path;
          this->bucket_layout_path = bucket_layout_path;
          lists = std::vector<list::List<Node *>>(capacity);
        }

        HashTable()
        {
          size = 0;
          rehash_multiple = 2;
          max_load_factor = 2;
          capacity = 500000;
          // capacity = 1000;
          lists = std::vector<list::List<Node *>>(capacity);
          full_layout_path = "/var/data/hashtable_layout";
          bucket_layout_path = "/var/data/hashtable_bucket_layout";
        }

        void rehash()
        {
          capacity *= rehash_multiple;
          std::vector<list::List<Node *>> new_lists(capacity);
          for (auto &list : lists)
          {
            for (Node *node : list)
            {
              // std::cout << hash(node->key) << ' ' << node->key << ' ' <<
              // node->value << std::endl;
              new_lists[hash(node->key)].push_back(node);
            }
          }
          swap(lists, new_lists);
        }

        key_type hash(key_type key)
        {
          return key % capacity; // Assume all keys are unsigned
        }

        uint64_t get_capacity() { return capacity; }

        Iterator begin()
        {
          if (size == 0)
            return end();

          for (uint64_t i = 0; i < capacity; ++i)
          {
            if (lists[i].begin() != lists[i].end())
            {
              return Iterator(&this->lists, i, lists[i].begin());
            }
          }
          return end();
        }

        Iterator end() { return Iterator(&this->lists, capacity, NULL); }

        void insert(std::pair<key_type, const char *> pr, bool disable_rehash = false)
        {
          if (!disable_rehash)
          {
            if (capacity * max_load_factor < size)
            {
              std::cout << "Rehashing: " << capacity * max_load_factor << " " << size
                        << std::endl;
              rehash();
            }
          }

          Node *node = new Node(pr);
          lists[hash(node->key)].push_back(node);
          size++;
          return;
        }

        void update(std::pair<key_type, const char *> pr)
        {
          for (auto itr = lists[hash(pr.first)].begin(); itr != lists[hash(pr.first)].end();
               ++itr)
          {
            Node *node = *itr;
            if (node->key == pr.first)
            {
              node->update(pr.second);
              return;
            }
          }
          LOG(log_level::info) << "Update cannot find key: " << pr.first;
          return;
        }

        Iterator find(key_type key, bool verbose = false)
        {
          // std::cout << "Finding key: " << key << " hash bucket is: " << hash(key)
          // << std::endl;
          int count = 0;
          if (verbose)
          {
            auto start_time_0 = std::chrono::high_resolution_clock::now();
            for (auto itr = lists[hash(key)].begin(); itr != lists[hash(key)].end();
                 ++itr)
            {
              Node *node = *itr;
              if (node->key == key)
              {
                auto end_time_0 = std::chrono::high_resolution_clock::now();
                std::cout << "Takes "
                          << static_cast<uint64_t>(
                                 std::chrono::duration_cast<std::chrono::nanoseconds>(
                                     end_time_0 - start_time_0)
                                     .count())
                          << " nanoseconds to traverse " << count << " nodes"
                          << std::endl;
                return Iterator(&this->lists, hash(key), itr);
              }
              count++;
            }
          }
          else
          {
            for (auto itr = lists[hash(key)].begin(); itr != lists[hash(key)].end();
                 ++itr)
            {
              Node *node = *itr;
              if (node->key == key)
              {
                return Iterator(&this->lists, hash(key), itr);
              }
              count++;
            }
          }

          // if (verbose)
          //{
          // auto end_time_0 = std::chrono::high_resolution_clock::now();
          // std::cout << "Takes " <<
          // static_cast<uint64_t>(std::chrono::duration_cast<std::chrono::nanoseconds>(end_time_0-start_time_0).count())
          // << " nanoseconds to traverse " << count << " nodes" << std::endl;
          // }
          return end();
        }

        void print_layout()
        {
          std::ofstream layout(full_layout_path);
          for (auto &list : lists)
          {
            for (Node *n : list)
            {
              layout << "key: " << n->key << " value: " << n->value
                     << " hash: " << hash(n->key)
                     << " address: " << static_cast<void *>(&(n->key))
                     << " capacity: " << capacity << std::endl;
              // layout  << "key: " << (void *)&(n->key) << " value: " << (void
              // *)&(n->value) << std::endl;
            }
          }
          layout.close();
        }

        void print_bucket_layout()
        {
          LOG(log_level::info) << "Writing hashtable bucket layout to " << bucket_layout_path;
          std::ofstream layout(bucket_layout_path);
          uint64_t count = 0;
          uint64_t print_count = 0;
          for (auto &list : lists)
          {
            count++;
            if (!list.empty())
            {
              print_count++;
              // layout  << "key: " << (*list.begin())->key << " value: " <<
              // (*list.begin())->value << std::endl;
              layout << "bucket: " << hash((*list.begin())->key)
                     << " address: " << static_cast<void *>(&((*list.begin())->key))
                     << " size: " << list.get_size()
                     << std::endl;
            }
          }
          LOG(log_level::info) << "Total number of lists: " << count << " , number of lists printed: " << print_count;
          layout.close();
        }
        void print_statistics()
        {
          double total_nodes = 0;
          double total_buckets = 0;
          for (auto &list : lists)
          {
            total_buckets += 1;
            total_nodes += list.get_size();
            // for (Node *node : list) {
            //   (void)(node);
            //   total_nodes += 1;
            // }
          }
          std::cout << "Hash table with " << total_buckets << " buckets and "
                    << total_nodes << " nodes, with a total size of "
                    << total_nodes * 256 / 1024.0 / 1024.0 / 1024.0 << " GB, averaging "
                    << total_nodes / total_buckets << " nodes per bucket"
                    << std::endl;
        }
        void print_memory_map()
        {
          double total_nodes = 0;
          double total_buckets = 0;
          for (auto &list : lists)
          {
            total_buckets += 1;
            for (Node *node : list)
            {
              (void)(node);
              total_nodes += 1;
            }
          }
          std::cout << "Hash table with " << total_buckets << " buckets and "
                    << total_nodes << " nodes, with a total size of "
                    << total_nodes * 256 << " averaging "
                    << total_nodes / total_buckets << " nodes per bucket"
                    << std::endl;
        }
      };

      class PartitionedHashTable
      {
        uint64_t size;
        uint64_t capacity;
        uint64_t partitioned_capacity;
        uint64_t hash_bias;
        std::vector<list::List<Node *>> lists;

      public:
        PartitionedHashTable(uint64_t capacity, uint64_t partitioned_capacity, uint64_t hash_bias)
        {
          size = 0;
          this->capacity = capacity;
          this->partitioned_capacity = partitioned_capacity;
          this->hash_bias = hash_bias;
          lists = std::vector<list::List<Node *>>(capacity);
        }

        key_type hash(key_type key)
        {
          return key % capacity; // Assume all keys are unsigned
        }

        uint64_t get_capacity() { return partitioned_capacity; }

        Iterator begin()
        {
          if (size == 0)
            return end();

          for (uint64_t i = 0; i < capacity; ++i)
          {
            if (lists[i].begin() != lists[i].end())
            {
              return Iterator(&this->lists, i, lists[i].begin());
            }
          }
          return end();
        }

        Iterator end() { return Iterator(&this->lists, capacity, NULL); }

        void insert(std::pair<key_type, const char *> pr)
        {
          Node *node = new Node(pr);
          lists[hash(node->key) - hash_bias].push_back(node);
          size++;
          return;
        }

        Iterator find(key_type key, bool verbose = false)
        {
          int count = 0;
          if (verbose)
          {
            auto start_time_0 = std::chrono::high_resolution_clock::now();
            for (auto itr = lists[hash(key)].begin(); itr != lists[hash(key)].end();
                 ++itr)
            {
              Node *node = *itr;
              if (node->key == key)
              {
                auto end_time_0 = std::chrono::high_resolution_clock::now();
                std::cout << "Takes "
                          << static_cast<uint64_t>(
                                 std::chrono::duration_cast<std::chrono::nanoseconds>(
                                     end_time_0 - start_time_0)
                                     .count())
                          << " nanoseconds to traverse " << count << " nodes"
                          << std::endl;
                return Iterator(&this->lists, hash(key), itr);
              }
              count++;
            }
          }
          else
          {
            for (auto itr = lists[hash(key) - hash_bias].begin(); itr != lists[hash(key) - hash_bias].end();
                 ++itr)
            {
              Node *node = *itr;
              if (node->key == key)
              {
                return Iterator(&this->lists, hash(key), itr);
              }
              count++;
            }
          }

          return end();
        }

        void print_statistics()
        {
          double total_nodes = 0;
          double total_buckets = 0;
          for (auto &list : lists)
          {
            total_buckets += 1;
            total_nodes += list.get_size();
          }
          std::cout << "Hash table with " << total_buckets << " buckets and "
                    << total_nodes << " nodes, with a total size of "
                    << total_nodes * 256 / 1024.0 / 1024.0 / 1024.0 << " GB, averaging "
                    << total_nodes / total_buckets << " nodes per bucket"
                    << std::endl;
        }
      };

    } // namespace hashtable
  }   // namespace datastructure

} // namespace pc

#endif // PC_API_HASHTABLE_H
