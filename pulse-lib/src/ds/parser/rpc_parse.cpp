#include "rpc_parse.h"
#include <iterator> // Include for std::iterator_traits

namespace pc
{
    namespace parser
    {

        // returns {true, key} if exists, otherwise {false, 0}
        void RpcParse::read_all_keys(std::ifstream &input_file, double total_keys, bool time_series)
        {
            all_keys.reserve(total_keys);
            std::string line;
            double count = 0;
            while (getline(input_file, line))
            {
                std::stringstream s(line);
                std::string word;
                s >> word;
                if (time_series)
                {
                    std::string delimiter = ",";
                    word = word.substr(0, word.find(delimiter));
                }
                else
                {
                    if (word != "INSERT")
                        continue;
                    s >> word;
                    assert(word.substr(0, 4) == "user");
                    word = word.substr(4);
                }
                key_type key = stoull(word);
                all_keys.push_back(key);
                count += 1;
            }
        }

        void RpcParse::read_all_keys_mmap(std::string filename, double total_keys)
        {
            (void)filename;
            (void)total_keys;

            // int fd;
            // if ((fd = open(filename.c_str(), O_RDWR)) == -1)
            //{
            //     std::cout << "Open file error " << filename << std::endl;
            //     return;
            // }

            // struct stat filestat;

            // if (fstat(fd, &filestat) != 0)
            //{
            //     perror("stat failed");
            //     exit(1);
            // }

            // char *key_log = (char *)mmap(NULL, filestat.st_size, PROT_READ, MAP_SHARED, fd, 0);
            // std::string line;
            // double count = 0;
            // while (getline(input_file, line))
            //{
            //     std::stringstream s(line);
            //     std::string word;
            //     s >> word;
            //     if (word != "INSERT")
            //         continue;
            //     s >> word;
            //     assert(word.substr(0, 4) == "user");
            //     word = word.substr(4);
            //     key_type key = stoull(word);
            //     all_keys.push_back(key);
            //     count += 1;
            // }
        }

        void RpcParse::read_all_query(std::ifstream &input_file, double total_query, bool time_series)
        {
            (void)total_query;
            std::string line;
            double count = 0;
            while (getline(input_file, line))
            {
                std::stringstream s(line);
                std::string word;
                query q;
                s >> word;
                if (time_series)
                {
                    q.key = stoull(word);
                    all_query.push_back(q);
                    continue;
                }
                if (word != "READ" && word != "SCAN" && word != "AGGREGATE" && word != "UPDATE" && word != "INSERT")
                    continue;
                q.query_type = word;
                s >> word;
                if (word.substr(0, 9) == "usertable")
                {
                    s >> word;
                }
                assert(word.substr(0, 4) == "user");
                word = word.substr(4);
                q.key = stoull(word);
                if (q.query_type == "SCAN")
                {
                    s >> word;
                    q.scan_len = static_cast<uint64_t>(stoll(word));
                }
                else if (q.query_type == "AGGREGATE")
                {
                    s >> word;
                    q.scan_len = static_cast<uint64_t>(stoll(word));
                    s >> word;
                    q.agg_type = static_cast<uint64_t>(stoll(word));
                }

                all_query.push_back(q);
                count += 1;
            }
        }

        void RpcParse::read_all_keys_test(std::ifstream &input_file, double total_keys, uint64_t num_iter)
        {
            all_keys.reserve(total_keys);
            std::string line;
            double count = 0;
            while (getline(input_file, line))
            {
                std::stringstream s(line);
                std::string word;
                s >> word;
                if (word != "INSERT")
                    continue;
                s >> word;
                assert(word.substr(0, 4) == "user");
                word = word.substr(4);
                key_type key = stoull(word);
                all_keys.push_back(key);
                count += 1;
                if (count >= num_iter)
                    break;
            }
        }

        void RpcParse::read_all_keys_mmap_test(std::string filename, double total_keys, uint64_t num_iter)
        {
            (void)filename;
            (void)total_keys;
            (void)num_iter;

            // all_keys.reserve(total_keys);
            // int fd;
            // if ((fd = open(filename.c_str(), O_RDWR)) == -1)
            //{
            //     std::cout << "Open file error " << filename << std::endl;
            //     return;
            // }

            // struct stat filestat;

            // if (fstat(fd, &filestat) != 0)
            //{
            //     perror("stat failed");
            //     exit(1);
            // }

            // char *key_log = (char *)mmap(NULL, filestat.st_size, PROT_READ, MAP_SHARED, fd, 0);
            // std::string line;
            // double count = 0;
            // while (getline(input_file, line))
            //{
            //     std::stringstream s(line);
            //     std::string word;
            //     s >> word;
            //     if (word != "INSERT")
            //         continue;
            //     s >> word;
            //     assert(word.substr(0, 4) == "user");
            //     word = word.substr(4);
            //     key_type key = stoull(word);
            //     all_keys.push_back(key);
            //     count += 1;
            //     if(count >= num_iter)
            //         break;
            // }
        }

        struct hashtable_entry
        {
            uint64_t key;
            char value[8];
            uint64_t next_ptr;
        };

        void RpcParse::load_hashtable(std::ifstream &input_file, void *ptr, void *base_ptr)
        {
            std::string line;
            // double count = 0;
            while (getline(input_file, line))
            {
                std::stringstream s(line);
                std::string word;
                hashtable_entry entry;
                s >> word; // unused key:
                s >> word; // real key
                entry.key = stoull(word);
                s >> word; // unused value:
                s >> word; // real value;
                strcpy(entry.value, word.c_str());
                s >> word; // unused hash
                s >> word; // real hash
                s >> word; // unused address:
                s >> word; // address
                void *addr = reinterpret_cast<void *>(std::stoull(word, nullptr, 16));
                s >> word; // unused next:
                s >> word; // next
                entry.next_ptr = std::stoull(word, nullptr, 16);
                memcpy(reinterpret_cast<void *>((reinterpret_cast<uint64_t>(ptr) + (reinterpret_cast<uint64_t>(addr) - reinterpret_cast<uint64_t>(base_ptr)))), &entry, sizeof(struct hashtable_entry));
            }
        }

        void RpcParse::load_route(std::ifstream &input_file, void *base)
        {
            (void)base;
            std::string line;
            // std::cout << "Into this function" << std::endl;
            while (getline(input_file, line))
            {
                // std::cout << "line" << std::endl;
                std::stringstream s(line);
                std::string word;
                s >> word; // unused bucket
                s >> word; // bucket number
                uint64_t bucket = stoull(word);
                s >> word; // unused address
                s >> word; // bucket_address
                // std::cout << "Inserting this bucket: " << bucket << " for word: " << word << std::endl;
                all_buckets[bucket] = reinterpret_cast<void *>(std::stoull(word, nullptr, 16));
            }
        }

        void RpcParse::read_time_series_keys(std::ifstream &input_file, double total_keys)
        {
            (void)total_keys;
            std::string line;
            double count = 0;
            while (getline(input_file, line))
            {
                std::stringstream s(line);
                std::string word;
                getline(s, word, ',');
                uint64_t key = static_cast<uint64_t>(std::stoull(word));
                getline(s, word, ',');
                uint64_t value = static_cast<uint64_t>(std::stoull(word));
                all_keys.push_back(key);
                all_values.push_back(value);
                count += 1;
            }
        }

        void RpcParse::read_time_series_query(std::ifstream &input_file, double total_query)
        {
            (void)total_query;
            std::string line;
            double count = 0;
            while (getline(input_file, line))
            {
                std::stringstream s(line);
                std::string word;
                getline(s, word, ' ');
                query q;
                q.key = static_cast<uint64_t>(std::stoull(word));
                getline(s, word, ' ');
                q.scan_len = static_cast<uint64_t>(std::stoull(word));
                all_query.push_back(q);
                count += 1;
            }
        }
        void RpcParse::clear_keys()
        {
            all_keys.clear();
            all_keys.shrink_to_fit();
            std::cout << "The all_keys vector size is " << all_keys.size() << ", and its "
                      << "capacity is " << all_keys.capacity() << std::endl;
        }
        void RpcParse::preallocate_key_entries(uint64_t size)
        {
            all_keys.reserve(size);
        }

        void RpcParse::split_queries(uint64_t num_threads)
        {
            // Resize the all_query_split to the required number of threads
            all_query_split.resize(num_threads);

            // Calculate the number of queries per thread
            uint64_t num_queries_per_thread = all_query.size() / num_threads;
            uint64_t remaining_queries = all_query.size() % num_threads;

            // Use a specific type for indexing iterators to avoid sign conversion
            using DifferenceType = typename std::iterator_traits<std::vector<query>::iterator>::difference_type;

            // Define the start index for splitting queries
            uint64_t start_index = 0;

            for (uint64_t i = 0; i < num_threads; i++)
            {
                // Calculate the end index with proper type casting
                uint64_t extra = (i < remaining_queries) ? 1 : 0;
                uint64_t end_index = start_index + num_queries_per_thread + extra;

                // Insert the relevant range into all_query_split, with casting to avoid sign conversion issues
                all_query_split[i].insert(
                    all_query_split[i].end(),
                    all_query.begin() + static_cast<DifferenceType>(start_index),
                    all_query.begin() + static_cast<DifferenceType>(end_index));

                // Update the start index for the next loop iteration
                start_index = end_index;
            }
        }

    }
}