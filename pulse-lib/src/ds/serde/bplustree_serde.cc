
#include "bplustree_serde.h"

namespace pc
{
    namespace serde
    {
        uint64_t addInt64toUInt64(uint64_t u, int64_t i)
        {
            if (i >= 0)
            {
                // Safe to add directly because i is non-negative
                return u + static_cast<uint64_t>(i);
            }
            else
            {
                // Convert i to uint64_t before adding which effectively subtracts |i|
                return u - static_cast<uint64_t>(-i);
            }
        }

        uint64_t round_up_to_gigabyte(uint64_t num)
        {
            const uint64_t gigabyte = 1024 * 1024 * 1024;
            return std::ceil(num / static_cast<double>(gigabyte)) * gigabyte;
        }

        BplustreeSerde::BplustreeSerde(const std::string &filename, int number_of_nodes, bool verbose) : BPlusTree(filename.c_str())
        {
            (void)number_of_nodes;
            // Open the file
            int count_prev = 0;
            std::ifstream file(filename);
            std::string line;
            int line_number = 0;
            uint64_t new_root = 0;
            uint64_t inter_node_count = 0;
            uint64_t leaf_node_count = 0;
            while (std::getline(file, line))
            {
                //LOG(log_level::info) << "The line is: " << line;
                if (static_cast<int>(line_number / 100000) > count_prev)
                {
                    count_prev = static_cast<int>(line_number / 100000);
                    std::cout << "Line processed: " << line_number << std::endl;
                }
                line_number++;
                std::istringstream iss(line);
                std::vector<std::string> columns;
                std::string column;
                while (iss >> column)
                {
                    columns.push_back(column);
                }
                try
                {
                    if (line.find("Root") != std::string::npos)
                    {
                        LOG(log_level::info) << "Setting root here " << line;
                        new_root = std::stoull(columns[2]);
                    }
                    else if (line.find("MIN") != std::string::npos)
                    {
                        min_address = std::stoull(columns[2]);
                    }
                    else if (line.find("MAX") != std::string::npos)
                    {
                        max_address = std::stoull(columns[2]);
                        address_range = max_address - min_address;
                        address_range = round_up_to_gigabyte(address_range);
                        LOG(log_level::info) << "Original root is: " << reinterpret_cast<void*>(new_root);
                        LOG(log_level::info) << "Max address is: " << reinterpret_cast<void*>(max_address);
                        LOG(log_level::info) << "Address range is: " << (address_range / 1024 / 1024 / 1024) << " GB";
                        alloc_ = SlabAllocator(min_address, address_range);
                        set_root(addInt64toUInt64(new_root, alloc_.get_offset()));
                    }
                    else if (line.find("Leaf") != std::string::npos)
                    {
                        uint64_t old_address = std::stoull(columns[3]);
                        int nk = std::stoi(columns.back());
                        std::vector<uint64_t> key_list;
                        for (int j = 0; j < nk; ++j)
                        {
                            std::getline(file, line);
                            line_number++;
                            std::istringstream key_iss(line);
                            std::vector<std::string> key_columns;
                            std::string key_column;
                            while (key_iss >> key_column) {}
                            key_list.push_back(std::stoull(key_column));
                        }
                        std::getline(file, line);
                        line_number++;
                        std::istringstream next_pointer_iss(line);
                        std::string next_pointer_column;
                        while(next_pointer_iss >> next_pointer_column) {}
                        void *next_pointer = reinterpret_cast<void *>(std::stoull(next_pointer_column));

                        std::getline(file, line);
                        line_number++;
                        std::istringstream prev_pointer_iss(line);
                        std::string prev_pointer_column;
                        while(prev_pointer_iss >> prev_pointer_column) {}
                        void *prev_pointer = reinterpret_cast<void *>(std::stoull(prev_pointer_column));

                        std::vector<void *> children_list;
                        create_layout_node(old_address, 1, nk, key_list, children_list, prev_pointer, next_pointer);
                        leaf_node_count++;
                        if(verbose) {
                            LOG(log_level::info) << "Leaf node: " << old_address << " " << nk << " " << prev_pointer << " " << next_pointer; 
                        }
                    }
                    else if (line.find("Inter") != std::string::npos)
                    {
                        uint64_t old_address = std::stoull(columns[3]);
                        int nk = std::stoi(columns.back());
                        std::vector<uint64_t> key_list;
                        std::vector<void *> children_list;
                        for (int j = 0; j < nk; ++j)
                        {
                            std::getline(file, line);
                            line_number++;
                            std::istringstream key_iss(line);
                            std::string key_column;
                            while (key_iss >> key_column){}
                            key_list.push_back(std::stoull(key_column));
                        }
                        for (int j = 0; j <= nk; ++j)
                        {
                            std::getline(file, line);
                            line_number++;
                            std::istringstream key_iss(line);
                            std::string key_column;
                            while (key_iss >> key_column){}
                            children_list.push_back(reinterpret_cast<void *>(std::stoull(key_column)));
                        }

                        create_layout_node(old_address, 0, nk, key_list, children_list, NULL, NULL);
                        inter_node_count++;
                        if(verbose) {
                            LOG(log_level::info) << "Inter node: " << old_address << " " << nk; 
                        }
                    }
                }
                catch (const std::invalid_argument &e)
                {
                    std::cerr << "Invalid argument: " << e.what() << " " << line << std::endl;
                }
                catch (const std::out_of_range &e)
                {
                    std::cerr << "Out of range: " << e.what() << std::endl;
                }
            }
            print_statistics_size_only();
            LOG(log_level::info) << "Leaf node count: " << leaf_node_count << " Inter node count: " << inter_node_count;
        }

        void BplustreeSerde::create_layout_node(uint64_t address, long _is_leaf, long nk, std::vector<uint64_t> &keys, std::vector<void *> &childrens, void *prev_pointer, void *next_pointer)
        {
            struct bplustree_node *node = reinterpret_cast<struct bplustree_node *>(addInt64toUInt64(address, alloc_.get_offset()));
            node->nk = nk;
            for (size_t i = 0; i < keys.size(); i++)
            {
                node->entries[i].key = keys[i];
            }
            if (_is_leaf)
            {
                // LEAF node
                node->is_leaf = 1;
                if(next_pointer != NULL) {
                    node->next = reinterpret_cast<struct bplustree_node *>(addInt64toUInt64(reinterpret_cast<uint64_t>(next_pointer), alloc_.get_offset()));
                } else {
                    node->next = NULL;
                }
                if(prev_pointer != NULL) {
                    node->previous = reinterpret_cast<struct bplustree_node *>(addInt64toUInt64(reinterpret_cast<uint64_t>(prev_pointer), alloc_.get_offset()));
                } else {
                    node->previous = NULL;
                }
            }
            else
            {
                // INTER node
                node->is_leaf = 0;
                for (size_t i = 0; i < childrens.size(); i++)
                {
                    node->children[i] = reinterpret_cast<struct bplustree_node *>(addInt64toUInt64(reinterpret_cast<uint64_t>(childrens[i]), alloc_.get_offset()));
                }
                node->next = node->previous = NULL;
            }
            add_node(node);
        }

    }
}