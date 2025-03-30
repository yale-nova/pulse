#ifndef PC_API_BPLUSTREE_H
#define PC_API_BPLUSTREE_H

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <iostream>
#include <vector>
#include <queue>
#include <fstream>
#include <limits.h>


namespace pc
{
  namespace datastructure
  {

/* minimum degree - every node (except root) must contain (BPLUSTREE_MIN_DEGREE - 1) keys */
/* all nodes (including root) may contain at most (2*BPLUSTREE_MIN_DEGREE - 1) keys */
#define BPLUSTREE_MIN_DEGREE 5

/* maximum keys a node can hold */
#define BPLUSTREE_MAX_KEYS (2 * BPLUSTREE_MIN_DEGREE - 1)

/* maximum children a node can have */
#define BPLUSTREE_MAX_CHILDREN (2 * BPLUSTREE_MIN_DEGREE)

/* default length for value */
#define DEFAULT_VALUE_LEN 8

#define LEAF_NODE_TRUE_FLAG 1
#define LEAF_NODE_FALSE_FLAG 0

    // verbose
    // #define VERBOSE_FLAG

    /* types of allocations */
    enum bplustree_alloc_types
    {
      BPLUSTREE_NODE_TYPE,
      BPLUSTREE_ENTRY_TYPE,
      BPLUSTREE_MAX_TYPES
    };

    /* declaration of data-structures */

    /*structure size: 16 Bytes*/
    struct bplustree_entry
    {
      uint64_t key;                  // 8 Bytes
      char value[DEFAULT_VALUE_LEN]; // 8 Bytes
      bplustree_entry() {
        key = 0;
        for (int i = 0; i < DEFAULT_VALUE_LEN; i++)
        {
          value[i] = 0;
        }
      }
      bplustree_entry(uint64_t _key, char *_value)
      {
        key = _key;
        assert(strlen(_value) < DEFAULT_VALUE_LEN);
        for (size_t i = 0; i < strlen(_value); i++)
        {
          value[i] = _value[i];
        }
      }
      bplustree_entry(const bplustree_entry &entry)
      {
#ifdef VERBOSE_FLAG
        std::cout << "calling copy constructor " << std::endl;
#endif
        key = entry.key;
        for (int i = 0; i < DEFAULT_VALUE_LEN; i++)
        {
          value[i] = entry.value[i];
        }
      }
      bplustree_entry &operator=(const bplustree_entry &entry)
      {
#ifdef VERBOSE_FLAG
        std::cout << "calling operator overwrite function " << std::endl;
        std::cout << "new key: " << entry.key << std::endl;
#endif
        key = entry.key;
        for (int i = 0; i < DEFAULT_VALUE_LEN; i++)
        {
          value[i] = entry.value[i];
        }
        return *this;
      }
    } __attribute__((aligned(8)));

    /*structure size: {24 + (144 * BPLUSTREE_MAX_KEYS) + 8} Bytes*/
    struct bplustree_node
    {
      // flag to check if the node is leaf or not
      long is_leaf; // 4 Bytes

      // current number of keys
      long nk; // 4 Bytes

      // array of <key-value> entries
      struct bplustree_entry entries[BPLUSTREE_MAX_KEYS]; //(16 * BPLUSTREE_MAX_KEYS) Bytes

      // array of child pointer
      struct bplustree_node *children[BPLUSTREE_MAX_CHILDREN]; //(8 * BPLUSTREE_MAX_CHILDREN) Bytes

      // used for leaf type nodes
      struct bplustree_node *next;     // 8 Bytes
      struct bplustree_node *previous; // 8 Bytes
    };

    class BPlusTree
    {
    public:
      BPlusTree(const char *path)
      {
        BPlusTree::init(path);
      }

      int init(const char *path);

      int read(const uint64_t key, void *&result);

      int scan(const uint64_t key, int len, std::vector<struct bplustree_entry> &result);
      std::pair<uint64_t, uint64_t> scan_stat(const uint64_t key, int len, std::vector<struct bplustree_entry> &result);

      int aggregate_time(const uint64_t key, uint64_t len, long &result);
      std::pair<uint64_t, uint64_t> aggregate_time_stat(const uint64_t key, uint64_t len, long &result);

      int update(const uint64_t key, void *value);

      int insert(const uint64_t key, void *value, bool without_balance=false);

      void destroy();

      ~BPlusTree()
      {
        destroy();
      }

      void print_layout(std::string filepath, bool size_only);
      void print_layout_node_only(std::string filepath);
      void print_layout_debug(std::string filepath);
      void print_statistics();
      void print_statistics_size_only();
      void set_root(uint64_t new_root) {
        root = reinterpret_cast<struct bplustree_node*>(new_root);
      }
      void add_node(struct bplustree_node *node) {
        nodes.push_back(node);
      }

    private:
      struct bplustree_node *root;
      std::vector<bplustree_node *> nodes;

      int check();

      int is_node_full(int nk);

      struct bplustree_node *create_node(int _is_leaf);

      char *search(struct bplustree_node *current_node, uint64_t key);

      void split_node(int idx, struct bplustree_node *parent, struct bplustree_node *child);

      void insert_not_full(struct bplustree_node *node, uint64_t key, void *value);

      bool update_if_found(struct bplustree_node *current_node, uint64_t key, void *value);

      void recursive_free(struct bplustree_node *current_node);

      void print_leaf_chain();
    };


  }
}

#endif // PC_API_BPLUSTREE_H
