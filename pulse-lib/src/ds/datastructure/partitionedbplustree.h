#ifndef PC_API_PARTITIONED_BPLUSTREE_H
#define PC_API_PARTITIONED_BPLUSTREE_H

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <iostream>
#include <unordered_map>
#include <vector>
#include <queue>
#include <fstream>
#include <limits.h>
#include "bplustree.h"
#include "ds/serde/bplustree_serde.h"
#include "ds/serde/slab_allocator.h"



namespace pc
{
  namespace datastructure
  {

    class PartitionedBPlusTree
    {
    public:
      PartitionedBPlusTree(const char *path)
      {
        PartitionedBPlusTree::init(path);
      }

      int init(const char *path);

      int scan(const uint64_t key, int len, std::vector<struct bplustree_entry> &result);

      int aggregate_time(const uint64_t key, uint64_t len, long &result);

      int update(const uint64_t key, void *value);

      void destroy();

      ~PartitionedBPlusTree()
      {
        destroy();
      }

      //void print_layout(std::string filepath, bool size_only);
      //void print_layout_node_only(std::string filepath);
      //void print_layout_debug(std::string filepath);
      //void print_statistics();
      //void print_statistics_size_only();

    private:
      std::unordered_map<uint64_t, bplustree_node *> nodes;

      struct bplustree_node *create_node(int _is_leaf);

      void insert_not_full(struct bplustree_node *node, uint64_t key, void *value);

      bool update_if_found(struct bplustree_node *current_node, uint64_t key, void *value);

      void recursive_free(struct bplustree_node *current_node);

    };

    /**
     * BPlusTree::init -- initialize bplus tree
     */
    int PartitionedBPlusTree::init(const char *path)
    {
    }
    /**
     * BPlusTree::scan -- perform range query
     */
    int PartitionedBPlusTree::scan(const uint64_t key, int len, std::vector<struct bplustree_entry> &result)
    {
      //int node_count = 0;

      //struct bplustree_node *current_node = root;

      //// going down upto the leaf
      //while (current_node != NULL && !current_node->is_leaf)
      //{
      //  int i = 0;

      //  while (i < current_node->nk && key > current_node->entries[i].key)
      //  {
      //    i += 1;
      //  }
      //  current_node = current_node->children[i];
      //  node_count++;
      //}

      //// reached the leaf
      //if (current_node != NULL)
      //{
      //  int i = 0;
      //  // find the starting point to start the scan
      //  while (i < current_node->nk && key > current_node->entries[i].key)
      //  {
      //    i += 1;
      //  }

      //  int len_count = 0;
      //  // forward scan through the leaf chain
      //  while (current_node != NULL)
      //  {
      //    while (i < current_node->nk)
      //    {
      //      result.push_back(bplustree_entry(current_node->entries[i].key, current_node->entries[i].value));

      //      len_count += 1;
      //      if (len_count == len)
      //        break;
      //      i += 1;
      //    }
      //    if (len_count == len)
      //      break;
      //    current_node = current_node->next;
      //    node_count++;
      //    i = 0;
      //  }
      //}

      //return node_count;
    }


    /**
     * BPlusTree::scan -- perform range query
     * agg_type
     * 0 sum
     * 1 count
     * 2 max
     * 3 min
     */
    int PartitionedBPlusTree::aggregate_time(const uint64_t key, uint64_t len, long &result)
    {
      //int node_count = 0;
      //uint64_t agg_type = key % 4;

      //struct bplustree_node *current_node = root;

      //// going down upto the leaf
      //while (current_node != NULL && !current_node->is_leaf)
      //{
      //  int i = 0;

      //  while (i < current_node->nk && key > current_node->entries[i].key)
      //  {
      //    i += 1;
      //  }
      //  current_node = current_node->children[i];
      //  node_count++;
      //}

      //// reached the leaf
      //if (current_node != NULL)
      //{
      //  int i = 0;
      //  // find the starting point to start the scan
      //  while (i < current_node->nk && key > current_node->entries[i].key)
      //  {
      //    i += 1;
      //  }

      //  // forward scan through the leaf chain
      //  while (current_node != NULL)
      //  {
      //    while (i < current_node->nk)
      //    {
      //      long node_value = char_to_int64(current_node->entries[i].value);
      //      switch (agg_type)
      //      {
      //      case 0:
      //        result += node_value;
      //        break;
      //      case 1:
      //        result += 1;
      //        break;
      //      case 2:
      //        if (node_value > result)
      //        {
      //          result = node_value;
      //        }
      //        break;
      //      case 3:
      //        if (node_value < result)
      //        {
      //          result = node_value;
      //        }
      //        break;
      //      }
      //      if (current_node->entries[i].key > key + len)
      //        break;
      //      i++;
      //    }
      //    if (current_node->entries[i].key > key + len)
      //      break;
      //    current_node = current_node->next;
      //    node_count++;
      //    i = 0;
      //  }
      //}

      //return 1;
    }

    /**
     * BPlusTree::update -- update 'value' of 'key' into btree, will insert the 'value' if 'key' not exists
     */
    int PartitionedBPlusTree::update(const uint64_t key, void *value)
    {
      // printf("[%s]: PARAM: key: %s, value: %s\n", __func__, key, (char *) value);
      // TODO FIXME
      //return insert(key, value);
    }

    /**
     * BPlusTree::create_node -- (internal) create new bplus tree node
     */
    inline struct bplustree_node *PartitionedBPlusTree::create_node(int _is_leaf)
    {
      struct bplustree_node *new_node_p = static_cast<struct bplustree_node *>(malloc(sizeof(struct bplustree_node)));
      new_node_p->is_leaf = _is_leaf;
      new_node_p->nk = 0;
      new_node_p->next = new_node_p->previous = NULL;

      // TODO FIXME
      //nodes.push_back(new_node_p);
      return new_node_p;
    }

    /**
     * BPlusTree::update_if_found -- (internal) search the key and if exist, update the value
     */
    bool PartitionedBPlusTree::update_if_found(struct bplustree_node *current_node, uint64_t key, void *value)
    {
      int i = 0;

      // todo: it is possible to apply binary search here to make the search faster
      while (i < current_node->nk && key > current_node->entries[i].key)
      {
        i += 1;
      }

      // we reached to leaf
      if (current_node->is_leaf)
      {
        // check if we found the key
        if (i < current_node->nk && key == current_node->entries[i].key)
        {
          // key found, update value and return
          memcpy(current_node->entries[i].value, static_cast<char *>(value), strlen(static_cast<char *>(value)));
          return true;
        }
        // key not found
        return false;
      }

      // the node is not leaf, move to the proper child node
      if (i < current_node->nk && key == current_node->entries[i].key)
        i += 1;
      return update_if_found(current_node->children[i], key, value);
    }

    /**
     * BPlusTree::insert_not_full -- (internal) inserts <key, value> pair into node
     * when this function called, we can assume that the node has space to hold new data
     */
    void PartitionedBPlusTree::insert_not_full(struct bplustree_node *node, uint64_t key, void *value)
    {
      //int i = node->nk - 1;

      //// if node is a leaf, insert the data to actual position and return
      //if (node->is_leaf)
      //{
      //  while (i >= 0 && node->entries[i].key > key)
      //  {
      //    node->entries[i + 1] = node->entries[i];
      //    i -= 1;
      //  }
      //  node->entries[i + 1].key = key;
      //  memcpy(node->entries[i + 1].value, static_cast<char *>(value), strlen(static_cast<char *>(value)) + 1);
      //  node->nk += 1;
      //  return;
      //}

      //// the node is not a leaf, find the child which is going to store the new data
      //while (i >= 0 && node->entries[i].key > key)
      //{
      //  i -= 1;
      //}

      //// check if the child is full
      //if (is_node_full(node->children[i + 1]->nk))
      //{
      //  // child is full, need to split
      //  split_node(i + 1, node, node->children[i + 1]);

      //  // after the split, child's middle entry is pushed to parent
      //  // decide which children will hold the new <key,value> pair
      //  if (node->entries[i + 1].key < key)
      //  {
      //    i += 1;
      //  }
      //}
      //insert_not_full(node->children[i + 1], key, value);
    }

    /**
     * btree_recursive_free -- recursively visit all the btree nodes and de-allocate memory
     */
    void PartitionedBPlusTree::recursive_free(struct bplustree_node *current_node)
    {
      // base case
      if (current_node->is_leaf)
      {
        if (current_node->next != NULL)
          current_node->next->previous = current_node->previous;
        if (current_node->previous != NULL)
          current_node->previous->next = current_node->next;
        free(current_node);
        return;
      }

      // recursively call all the child nodes
      for (int i = 0; i < current_node->nk + 1; i += 1)
      {
        recursive_free(current_node->children[i]);
      }

      // free the memory
      free(current_node);
    }

    /**
     * BPlusTree::destroy -- destructor
     */
    void PartitionedBPlusTree::destroy()
    {
      //recursive_free(root);
      //root = NULL;
    }


  }
}

#endif // PC_API_PARTITIONED_BPLUSTREE_H
