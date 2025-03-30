#include "bplustree.h"

long char_to_int64(char *a)
{
  long num = 0;
  for (size_t i = 0; i < sizeof(a); i++)
    num = (num << 8) | a[i];
  return num;
}
namespace pc
{
  namespace datastructure
  {
    /**
     * BPlusTree::check -- (internal) checks if bplus tree has been initialized
     */
    inline int BPlusTree::check()
    {
      if (root == NULL)
      {
        fprintf(stderr, "[%s]: FATAL: bplustree not initialized yet\n", __FUNCTION__);
        assert(0);
      }
      return 1;
    }

    /**
     * BPlusTree::print_leaf_chain -- (internal) print the leaf chain to check the integrity of bplus-tree
     */
    void BPlusTree::print_leaf_chain()
    {
      struct bplustree_node *current_node = root;
      while (current_node != NULL && !current_node->is_leaf)
      {
        current_node = current_node->children[0];
      }

      while (current_node != NULL)
      {
        printf("[");
        for (int i = 0; i < current_node->nk; i += 1)
        {
          printf(" <%ld, %s>", current_node->entries[i].key, current_node->entries[i].value);
        }
        printf("] -> ");
        current_node = current_node->next;
      }
      printf("\n");
    }

    /**
     * BPlusTree::is_node_full -- (internal) checks if bplus tree node contains max possible <key-value> pairs
     */
    inline int BPlusTree::is_node_full(int nk)
    {
      return nk == BPLUSTREE_MAX_KEYS ? 1 : 0;
    }

    /**
     * BPlusTree::init -- initialize bplus tree
     */
    int BPlusTree::init(const char *path)
    {
      (void)path;
      root = NULL;
      return 1;
    }
    /**
     * BPlusTree::scan -- perform range query
     */
    int BPlusTree::scan(const uint64_t key, int len, std::vector<struct bplustree_entry> &result)
    {
      //std::cout << "Scanning for key: " << key << " and scan length: " << len << std::endl;
      int node_count = 0;
      check();

      struct bplustree_node *current_node = root;

      // going down upto the leaf
      while (current_node != NULL && !current_node->is_leaf)
      {
        int i = 0;

        while (i < current_node->nk && key > current_node->entries[i].key)
        {
          i += 1;
        }
        current_node = current_node->children[i];
        node_count++;
      }

      // reached the leaf
      if (current_node != NULL)
      {
        int i = 0;
        // find the starting point to start the scan
        while (i < current_node->nk && key > current_node->entries[i].key)
        {
          i += 1;
        }

        int len_count = 0;
        // forward scan through the leaf chain
        while (current_node != NULL)
        {
          while (i < current_node->nk)
          {
            result.push_back(bplustree_entry(current_node->entries[i].key, current_node->entries[i].value));

            len_count += 1;
            if (len_count == len)
              break;
            i += 1;
          }
          if (len_count == len)
            break;
          current_node = current_node->next;
          node_count++;
          i = 0;
        }
      }

      return node_count;
    }

    /**
     * BPlusTree::scan -- perform range query
     */
    std::pair<uint64_t, uint64_t> BPlusTree::scan_stat(const uint64_t key, int len, std::vector<struct bplustree_entry> &result)
    {
      //std::cout << "Scanning for key: " << key << " and scan length: " << len << std::endl;
      int node_count = 0;
      check();
      uint64_t number_nodes_traverse = 0;
      uint64_t number_keys_traverse = 0;

      struct bplustree_node *current_node = root;

      // going down upto the leaf
      while (current_node != NULL && !current_node->is_leaf)
      {
        int i = 0;

        while (i < current_node->nk && key > current_node->entries[i].key)
        {
          i += 1;
        }
        number_keys_traverse += static_cast<long unsigned int>(current_node->nk);
        current_node = current_node->children[i];
        node_count++;
        number_nodes_traverse++;
      }

      // reached the leaf
      if (current_node != NULL)
      {
        int i = 0;
        // find the starting point to start the scan
        while (i < current_node->nk && key > current_node->entries[i].key)
        {
          i += 1;
        }

        int len_count = 0;
        // forward scan through the leaf chain
        while (current_node != NULL)
        {
          while (i < current_node->nk)
          {
            result.push_back(bplustree_entry(current_node->entries[i].key, current_node->entries[i].value));

            len_count += 1;
            if (len_count == len)
              break;
            i += 1;
          }
          if (len_count == len)
            break;
          number_keys_traverse += static_cast<uint64_t>(current_node->nk);
          current_node = current_node->next;
          number_nodes_traverse++;
          node_count++;
          i = 0;
        }
      }

      return std::make_pair(number_nodes_traverse, number_keys_traverse);
    }

    /**
     * BPlusTree::scan -- perform range query
     * agg_type
     * 0 sum
     * 1 count
     * 2 max
     * 3 min
     */
    int BPlusTree::aggregate_time(const uint64_t key, uint64_t len, long &result)
    {
      int node_count = 0;
      check();
      uint64_t agg_type = key % 4;

      struct bplustree_node *current_node = root;

      // going down upto the leaf
      while (current_node != NULL && !current_node->is_leaf)
      {
        int i = 0;

        while (i < current_node->nk && key > current_node->entries[i].key)
        {
          i += 1;
        }
        current_node = current_node->children[i];
        node_count++;
      }

      // reached the leaf
      if (current_node != NULL)
      {
        int i = 0;
        // find the starting point to start the scan
        while (i < current_node->nk && key > current_node->entries[i].key)
        {
          i += 1;
        }

        // forward scan through the leaf chain
        while (current_node != NULL)
        {
          while (i < current_node->nk)
          {
            long node_value = char_to_int64(current_node->entries[i].value);
            switch (agg_type)
            {
            case 0:
              result += node_value;
              break;
            case 1:
              result += 1;
              break;
            case 2:
              if (node_value > result)
              {
                result = node_value;
              }
              break;
            case 3:
              if (node_value < result)
              {
                result = node_value;
              }
              break;
            }
            if (current_node->entries[i].key > key + len)
              break;
            i++;
          }
          if (current_node->entries[i].key > key + len)
            break;
          current_node = current_node->next;
          node_count++;
          i = 0;
        }
      }

      return 1;
    }

    /**
     * BPlusTree::scan -- perform range query
     * agg_type
     * 0 sum
     * 1 count
     * 2 max
     * 3 min
     */
    std::pair<uint64_t, uint64_t> BPlusTree::aggregate_time_stat(const uint64_t key, uint64_t len, long &result)
    {
      (void)result;
      check();
      uint64_t number_nodes_traverse = 0;
      uint64_t number_keys_traverse = 0;

      struct bplustree_node *current_node = root;

      // going down upto the leaf
      while (current_node != NULL && !current_node->is_leaf)
      {
        int i = 0;

        while (i < current_node->nk && key > current_node->entries[i].key)
        {
          i += 1;
        }
        number_keys_traverse += static_cast<long unsigned int>(current_node->nk);
        current_node = current_node->children[i];
        number_nodes_traverse++;
      }

      // reached the leaf
      if (current_node != NULL)
      {
        int i = 0;
        // find the starting point to start the scan
        while (i < current_node->nk && key > current_node->entries[i].key)
        {
          i += 1;
        }

        // forward scan through the leaf chain
        while (current_node != NULL)
        {
          while (i < current_node->nk)
          {
            if (current_node->entries[i].key > key + len)
              break;
            i++;
          }
          if (current_node->entries[i].key > key + len)
            break;
          number_keys_traverse += static_cast<uint64_t>(current_node->nk);
          current_node = current_node->next;
          number_nodes_traverse++;
          i = 0;
        }
      }

      //std::cout << "Total number of nodes traversed " << number_nodes_traverse << std::endl;
      //std::cout << "Total number of keys traversed " << number_keys_traverse << std::endl;

      return std::make_pair(number_nodes_traverse, number_keys_traverse);
    }

    /**
     * BPlusTree::search -- (internal) search the node contains the key and return the value
     */
    char *BPlusTree::search(struct bplustree_node *current_node, uint64_t key)
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
#ifdef VERBOSE_FLAG
        std::cout << "Printing the Node info" << std::endl;
        std::cout << "Is it a leaf? " << current_node->is_leaf << std::endl;
        std::cout << "number of keys: " << current_node->nk << std::endl;
        for (int j = 0; j < current_node->nk; j++)
        {
          std::cout << current_node->entries[j].key << " " << current_node->entries[j].value << " " << &(current_node->entries[j].value) << std::endl;
        }
#endif
        // check if we found the key
        if (i < current_node->nk && key == current_node->entries[i].key)
        {
          // key found, return the value
          std::cout << "Key found！" << std::endl;
          return current_node->entries[i].value;
        }
        // key not found
        return NULL;
      }

      // the node is not leaf, move to the proper child node
      if (i < current_node->nk && key == current_node->entries[i].key)
        i += 1;
      return search(current_node->children[i], key);
    }

    /**
     * BPlusTree::read -- read 'value' of 'key' from btree and place it into '&result'
     */
    int BPlusTree::read(const uint64_t key, void *&result)
    {
      check();
      result = search(root, key);
      return 1;
    }

    /**
     * BPlusTree::update -- update 'value' of 'key' into btree, will insert the 'value' if 'key' not exists
     */
    int BPlusTree::update(const uint64_t key, void *value)
    {
      // printf("[%s]: PARAM: key: %s, value: %s\n", __func__, key, (char *) value);
      check();
      return insert(key, value);
    }

    /**
     * BPlusTree::create_node -- (internal) create new bplus tree node
     */
    inline struct bplustree_node *BPlusTree::create_node(int _is_leaf)
    {
      struct bplustree_node *new_node_p = static_cast<struct bplustree_node *>(malloc(sizeof(struct bplustree_node)));
      new_node_p->is_leaf = _is_leaf;
      new_node_p->nk = 0;
      new_node_p->next = new_node_p->previous = NULL;

      nodes.push_back(new_node_p);
      return new_node_p;
    }

    /**
     * BPlusTree::update_if_found -- (internal) search the key and if exist, update the value
     */
    bool BPlusTree::update_if_found(struct bplustree_node *current_node, uint64_t key, void *value)
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
     * BPlusTree::split_node -- (internal) split the children of the child node equally with the new sibling node
     *
     * so, after this split, both the child and sibling node will hold BPLUSTREE_MIN_DEGREE children,
     * one children will be pushed to the parent node.
     *
     * this function will be called when the child node is full and become idx'th child of the parent,
     * the new sibling node will be the (idx+1)'th child of the parent.
     */
    void BPlusTree::split_node(int idx, struct bplustree_node *parent, struct bplustree_node *child)
    {
      if (child->is_leaf)
      {
        // new right-sibling node will get the same status as child
        struct bplustree_node *sibling = create_node(child->is_leaf);
        // new right-sibling node will hold the BPLUSTREE_MIN_DEGREE entries of child node
        sibling->nk = BPLUSTREE_MIN_DEGREE;

        // transfer the last BPLUSTREE_MIN_DEGREE entries of child node to it's sibling node
        for (int i = 0; i < BPLUSTREE_MIN_DEGREE; i += 1)
        {
          sibling->entries[i] = child->entries[i + BPLUSTREE_MIN_DEGREE - 1];
        }

        // reduce the number of entries of child node
        child->nk = BPLUSTREE_MIN_DEGREE - 1;

        // as parent node is going to get a new child at (idx+1)-th place, make a room for it
        for (int i = parent->nk; i >= idx + 1; i -= 1)
        {
          parent->children[i + 1] = parent->children[i];
        }

        // place sibling node as parent's children
        parent->children[idx + 1] = sibling;

        // a entry of child node will move to the parent node, make a room for it
        for (int i = parent->nk - 1; i >= idx; i -= 1)
        {
          parent->entries[i + 1] = parent->entries[i];
        }

        // place the 0'th key of sibling node to parent node
        parent->entries[idx].key = sibling->entries[0].key;

        // parent now hold a new key, so increasing the number of keys
        parent->nk += 1;

        // adjust leaf chain pointers
        sibling->next = child->next;
        if (sibling->next != NULL)
        {
          sibling->next->previous = sibling;
        }
        child->next = sibling;
        sibling->previous = child;
      }
      else
      {
        // new right-sibling node will get the same status as child
        struct bplustree_node *sibling = create_node(child->is_leaf);
        // new sibling child will hold the (BPLUSTREE_MIN_DEGREE - 1) entries of child node
        sibling->nk = BPLUSTREE_MIN_DEGREE - 1;

        // transfer the last (BPLUSTREE_MIN_DEGREE - 1) entries of child node to it's sibling node
        for (int i = 0; i < BPLUSTREE_MIN_DEGREE - 1; i += 1)
        {
          sibling->entries[i] = child->entries[i + BPLUSTREE_MIN_DEGREE];
        }

        // as child is an internal node, transfer the last (BPLUSTREE_MIN_DEGREE) children pointers of child node to it's sibling node
        for (int i = 0; i < BPLUSTREE_MIN_DEGREE; i += 1)
        {
          sibling->children[i] = child->children[i + BPLUSTREE_MIN_DEGREE];
        }

        child->nk = BPLUSTREE_MIN_DEGREE - 1;

        // as parent node is going to get a new child at (idx+1)-th place, make a room for it
        for (int i = parent->nk; i >= idx + 1; i -= 1)
        {
          parent->children[i + 1] = parent->children[i];
        }

        // place sibling node as parent's children
        parent->children[idx + 1] = sibling;

        // a entry of child node will move to the parent node, make a room for it
        for (int i = parent->nk - 1; i >= idx; i -= 1)
        {
          parent->entries[i + 1] = parent->entries[i];
        }

        // place the middle entry of child node to parent node
        parent->entries[idx] = child->entries[BPLUSTREE_MIN_DEGREE - 1];

        // parent now hold a new entry, so increasing the number of keys
        parent->nk += 1;
      }
    }

    /**
     * BPlusTree::insert_not_full -- (internal) inserts <key, value> pair into node
     * when this function called, we can assume that the node has space to hold new data
     */
    void BPlusTree::insert_not_full(struct bplustree_node *node, uint64_t key, void *value)
    {
      int i = node->nk - 1;

      // if node is a leaf, insert the data to actual position and return
      if (node->is_leaf)
      {
        while (i >= 0 && node->entries[i].key > key)
        {
          node->entries[i + 1] = node->entries[i];
          i -= 1;
        }
#ifdef VERBOSE_FLAG
        std::cout << "Printing the Node info before insert" << std::endl;
        std::cout << "Is it a leaf? " << node->is_leaf << std::endl;
        std::cout << "number of keys: " << node->nk << std::endl;
        for (int j = 0; j < node->nk + 1; j++)
        {
          std::cout << node->entries[j].key << " " << node->entries[j].value << std::endl;
        }
#endif

        node->entries[i + 1].key = key;
        memcpy(node->entries[i + 1].value, static_cast<char *>(value), strlen(static_cast<char *>(value)) + 1);
#ifdef VERBOSE_FLAG
        std::cout << "Memcpy size: " << strlen((char *)value) + 1 << std::endl;
#endif
        node->nk += 1;
#ifdef VERBOSE_FLAG
        std::cout << "Printing the Node info after insert" << std::endl;
        std::cout << "Is it a leaf? " << node->is_leaf << std::endl;
        std::cout << "number of keys: " << node->nk << std::endl;
        for (int j = 0; j < node->nk; j++)
        {
          std::cout << node->entries[j].key << " " << node->entries[j].value << std::endl;
        }
#endif
        return;
      }

      // the node is not a leaf, find the child which is going to store the new data
      while (i >= 0 && node->entries[i].key > key)
      {
        i -= 1;
      }

      // check if the child is full
      if (is_node_full(node->children[i + 1]->nk))
      {
        // child is full, need to split
        split_node(i + 1, node, node->children[i + 1]);

        // after the split, child's middle entry is pushed to parent
        // decide which children will hold the new <key,value> pair
        if (node->entries[i + 1].key < key)
        {
          i += 1;
        }
      }
      insert_not_full(node->children[i + 1], key, value);
    }

    /**
     * BPlusTree::insert -- inserts <key, value> pair into bplus tree, will update the 'value' if 'key' already exists
     */
    int BPlusTree::insert(const uint64_t key, void *value, bool without_balance)
    {
      // printf("[%s]: PARAM: key: %ld, value: %s\n", __func__, key, (char *) value);

      // if bplus tree is empty, create root
      if (root == NULL)
      {
        root = create_node(LEAF_NODE_TRUE_FLAG); // root is also a leaf
        root->entries[0].key = key;
        memcpy(root->entries[0].value, static_cast<char *>(value), strlen(static_cast<char *>(value)) + 1);
        root->nk = 1;
#ifdef VERBOSE_FLAG
        std::cout << "Printing the Node info after insert" << std::endl;
        std::cout << "Is it a leaf? " << root->is_leaf << std::endl;
        std::cout << "number of keys: " << root->nk << std::endl;
        for (int j = 0; j < root->nk; j++)
        {
          std::cout << root->entries[j].key << " " << root->entries[j].value << std::endl;
        }
#endif
        return 1;
      }

      // if the key already exist in bplus tree, update the value and return
      bool is_updated = update_if_found(root, key, value);
      if (is_updated)
        return 1;

      // if root is full
      if(without_balance) {
        if (!is_node_full(root->nk))
        {
          // root is not full, go ahead and insert the data to proper place
          insert_not_full(root, key, value);
        }
      } else {
        if (is_node_full(root->nk))
        {
          int idx = 0;
          struct bplustree_node *new_root = create_node(LEAF_NODE_FALSE_FLAG); // root is not a leaf anymore
          new_root->children[idx] = root;
          split_node(idx, new_root, root);

          // new_root is holding two children now, decide which children will hold the new <key,value> pair
          if (new_root->entries[idx].key < key)
          {
            idx += 1;
          }

          // new_root->children[idx] will definitely have space now, go ahead and insert the data to proper place
          insert_not_full(new_root->children[idx], key, value);
          // update the root
          root = new_root;
        }
        else
        {
          // root is not full, go ahead and insert the data to proper place
          insert_not_full(root, key, value);
        }

      }

      return 1;
    }

    /**
     * btree_recursive_free -- recursively visit all the btree nodes and de-allocate memory
     */
    void BPlusTree::recursive_free(struct bplustree_node *current_node)
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
    void BPlusTree::destroy()
    {
      check();
      recursive_free(root);
      root = NULL;
    }

    void BPlusTree::print_layout_debug(std::string filepath)
    {
      std::ofstream fout(filepath);
      int node_size = sizeof(bplustree_node);
      long long tree_size = node_size * static_cast<long long>(nodes.size());
      fout << "Tree size = " << static_cast<double>(tree_size) / 1e9 << " GB" << std::endl;
      fout << "Root address: " << reinterpret_cast<uint64_t>(root) << std::endl;
      int key_count = 0;
      int leaf_count = 0;
      int key_count_traverse = 0;
      int leaf_count_traverse = 0;
      for (auto curr_node : nodes) {
        fout << "Node at address: " << reinterpret_cast<uint64_t>(curr_node) << " has keys: " << std::endl;
        std::cout << "Node at address: " << reinterpret_cast<uint64_t>(curr_node) << " has keys: " << std::endl;
        if(curr_node->is_leaf) {
          leaf_count++;
          key_count += curr_node->nk;
          for (int i = 0; i < curr_node->nk; ++i) {
            fout << curr_node->entries[i].key << std::endl;
            std::cout << curr_node->entries[i].key << std::endl;
          }
        }
      }

      struct bplustree_node *current_node = root;

      // going down upto the leaf
      while (current_node != NULL && !current_node->is_leaf)
      {
        current_node = current_node->children[0];
      }
      while(current_node->next != NULL) {
        leaf_count_traverse += 1;
        key_count_traverse += current_node->nk;
        current_node = current_node->next;
      }
      leaf_count_traverse += 1;
      key_count_traverse += current_node->nk;

      fout << "key_count: " << key_count << std::endl;
      fout << "leaf_count: " << leaf_count << std::endl;
      fout << "key_count_traverse: " << key_count_traverse << std::endl;
      fout << "leaf_count_traverse: " << leaf_count_traverse << std::endl;
      fout.close();
    }

    void BPlusTree::print_layout_node_only(std::string filepath)
    {
      std::ofstream fout(filepath, std::ios::binary);
      int node_size = sizeof(bplustree_node);
      long long tree_size = node_size * static_cast<long long>(nodes.size());
      fout << "Tree size = " << static_cast<double>(tree_size) / 1024/1024/1024 << " GB" << std::endl;
      //std::cout << "Tree size = " << static_cast<double>(tree_size) / 1e9 << " GB" << std::endl;
      fout << "Root address: " << reinterpret_cast<uint64_t>(root) << std::endl;
      //std::cout << "Root address: " << reinterpret_cast<uint64_t>(root) << std::endl;

      uint64_t max_addr = 0;
      uint64_t min_addr = ULLONG_MAX;
      for (auto curr_node : nodes) {
        if(min_addr > reinterpret_cast<uint64_t>(curr_node)) {
          min_addr = reinterpret_cast<uint64_t>(curr_node);
        } else if(max_addr < reinterpret_cast<uint64_t>(curr_node)) {
          max_addr = reinterpret_cast<uint64_t>(curr_node);
        }
      }
      fout << "MIN address: " << reinterpret_cast<uint64_t>(min_addr) << std::endl;
      //std::cout << "MIN address: " << reinterpret_cast<uint64_t>(min_addr) << std::endl;
      fout << "MAX address: " << reinterpret_cast<uint64_t>(max_addr) << std::endl;
      //std::cout << "MAX address: " << reinterpret_cast<uint64_t>(max_addr) << std::endl;

      for (auto curr_node : nodes)
      {
        // print node
        void* addr = static_cast<void *>(curr_node);
        if(curr_node->is_leaf) {
          fout << "Leaf Node address: " << reinterpret_cast<uint64_t>(addr) << " nk: " << curr_node->nk << std::endl;
          //std::cout << "Leaf Node address: " << reinterpret_cast<uint64_t>(addr) << " nk: " << curr_node->nk << std::endl;
          for (int i = 0; i < curr_node->nk; ++i)
          {
            fout << "Key: " << i << " is " << curr_node->entries[i].key << std::endl;
            //std::cout << "Key: " << i << " is " << curr_node->entries[i].key << std::endl;
          }
          fout << "Next address: " << reinterpret_cast<uint64_t>(curr_node->next) << std::endl;
          //std::cout << "Next address: " << reinterpret_cast<uint64_t>(curr_node->next) << std::endl;
          fout << "Previous address: " << reinterpret_cast<uint64_t>(curr_node->previous) << std::endl;
          //std::cout << "Previous address: " << reinterpret_cast<uint64_t>(curr_node->previous) << std::endl;
        } else {
          fout << "Inter Node address: " << reinterpret_cast<uint64_t>(addr) << " nk: " << curr_node->nk << std::endl;
          //std::cout << "Inter Node address: " << reinterpret_cast<uint64_t>(addr) << " nk: " << curr_node->nk << std::endl;
          for (int i = 0; i < curr_node->nk; ++i)
          {
            fout << "Key: " << i << " is " << curr_node->entries[i].key << std::endl;
            //std::cout << "Key: " << i << " is " << curr_node->entries[i].key << std::endl;
          }
          for (int i = 0; i <= curr_node->nk; ++i)
          {
            fout << "Child: " << i << " address: " << reinterpret_cast<uint64_t>(curr_node->children[i]) << std::endl;
            //std::cout << "Child: " << i << " address: " << reinterpret_cast<uint64_t>(curr_node->children[i]) << std::endl;
          }
        }
      }

      fout.close();
    }

    void BPlusTree::print_layout(std::string filepath, bool size_only = false)
    {
      std::ofstream fout(filepath);
      int node_size = sizeof(bplustree_node);
      long long tree_size = node_size * static_cast<long long>(nodes.size());
      fout << "Tree size = " << static_cast<double>(tree_size) / 1e9 << " GB" << std::endl;
      if (size_only)
      {
        fout.close();
        return;
      }

      unsigned long long min_addr = reinterpret_cast<unsigned long long>(root);

      for (auto curr_node : nodes)
      {
        if (min_addr > reinterpret_cast<unsigned long long>(curr_node))
        {
          min_addr = reinterpret_cast<unsigned long long>(curr_node);
        }
      }

      for (auto curr_node : nodes)
      {
        // decrease children, next and previous pointers
        for (int i = 0; i <= curr_node->nk; ++i)
        {
          curr_node->children[i] = reinterpret_cast<bplustree_node *>(reinterpret_cast<unsigned long long>(curr_node->children[i]) - min_addr);
        }
        if (curr_node->next != NULL)
          curr_node->next = reinterpret_cast<bplustree_node *>(reinterpret_cast<unsigned long long>(curr_node->next) - min_addr);
        if (curr_node->previous != NULL)
          curr_node->previous = reinterpret_cast<bplustree_node *>(reinterpret_cast<unsigned long long>(curr_node->previous) - min_addr);

        // print node
        unsigned char *addr = reinterpret_cast<unsigned char *>(curr_node);
        fout << "New node: address = " << reinterpret_cast<void *>(addr - reinterpret_cast<unsigned char *>(min_addr)) << std::endl;
        for (size_t i = 0; i < sizeof(bplustree_node); ++i, ++addr)
        {
          fout << "address = " << reinterpret_cast<void *>(addr - reinterpret_cast<unsigned char *>(min_addr)) << " value = " << std::hex
               << static_cast<unsigned int>(*addr) << std::endl;
        }
        fout << std::endl;

        // increase children next and previous pointers
        for (int i = 0; i <= curr_node->nk; ++i)
        {
          curr_node->children[i] = reinterpret_cast<bplustree_node *>(reinterpret_cast<unsigned long long>(curr_node->children[i]) + min_addr);
        }
        if (curr_node->next != NULL)
          curr_node->next = reinterpret_cast<bplustree_node *>(reinterpret_cast<unsigned long long>(curr_node->next) + min_addr);
        if (curr_node->previous != NULL)
          curr_node->previous = reinterpret_cast<bplustree_node *>(reinterpret_cast<unsigned long long>(curr_node->previous) + min_addr);
      }

      fout.close();
    }

    void BPlusTree::print_statistics_size_only()
    {
      // Get size of B+Tree
      int node_size = sizeof(bplustree_node);
      long long tree_size = node_size * static_cast<long long>(nodes.size());
      std::cout << "Tree size = " << static_cast<double>(tree_size) / 1e9 << " GB" << std::endl;
    }

    void BPlusTree::print_statistics()
    {
      // Get size of B+Tree
      int node_size = sizeof(bplustree_node);
      long long tree_size = node_size * static_cast<long long>(nodes.size());
      std::cout << "Tree size = " << static_cast<double>(tree_size) / 1e9 << " GB" << std::endl;

      // Get depth of B+Tree
      struct bplustree_node *current_node = root;
      double depth = 0;
      double order_sum = 0;
      while (current_node != NULL && !current_node->is_leaf)
      {
        current_node = current_node->children[0];
        order_sum += current_node->nk;
        depth += 1;
      }
      std::cout << "Depth of B+Tree is: " << depth << " with " << order_sum / depth / 10.0 << " full" << std::endl;
    }

  }
}

