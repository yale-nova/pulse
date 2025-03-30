#include "webservice.h"

void thread_work(int thread_id, int num_queries_per_thread)
{
    PinToCore(thread_id % std::thread::hardware_concurrency());
    uint64_t ptr_chasing_time = 0;
    uint64_t non_ptr_chasing_time = 0;
    auto end_4 = get_time();
    uint64_t result;
    for (int i = 0; i < num_queries_per_thread / 32 * 32; i += 32)
    {
        auto end_5 = get_time();
        for (int j = 0; j < 32; j++)
        {
            auto ht_result = ht.find(split_queries[thread_id][i + j].key);
            result = reinterpret_cast<uint64_t>((*ht_result).second);
            ACCESS_ONCE(result);
            if (ht_result == ht.end())
            {
                LOG(log_level::info) << "Key not found!";
            }
        }
        auto end_6 = get_time();
        auto data_to_process = &(data[result % kAppMaxData]);
        std::string text = std::string(reinterpret_cast<char *>(data_to_process), 8 * 1024);
        consume(text);
        auto end_7 = get_time();
        ptr_chasing_time += (end_6 - end_5);
        non_ptr_chasing_time += (end_7 - end_6);
        if (i % (num_queries_per_thread / 1000) == 0)
        {
            LOG(log_level::info) << "[Inter] Number of queries_per_thread: " << num_queries_per_thread;
            LOG(log_level::info) << "[Inter] Pointer chasing takes: " << ptr_chasing_time / 1e9 << " seconds to execute queries ";
            LOG(log_level::info) << "[Inter] Non pointer chasing takes: " << non_ptr_chasing_time / 1e9 << " seconds to execute queries ";
            // Convert to double for floating-point division
            double p_double = static_cast<double>(ptr_chasing_time);
            double np_double = static_cast<double>(non_ptr_chasing_time);

            // Calculate the sum of the two numbers
            double total = p_double + np_double;

            // Calculate the percentage each number represents of the total
            double p_percentage = p_double / total;
            double np_percentage = np_double / total;

            // Output the percentages
            LOG(log_level::info) << "[Inter] Percentage for ptr chasing: " << p_percentage;
            LOG(log_level::info) << "[Inter] Percentage non ptr chasing: " << np_percentage;
        }
    }
    auto end_8 = get_time();
    LOG(log_level::info) << "[" << thread_id << "]"
                         << " Takes " << (end_8 - end_4) / 1e9 << " seconds to execute queries " << split_queries[thread_id].size() / 32 << " ,average " << (end_8 - end_4) / (split_queries[thread_id].size() / 32) / 1000 << " microseconds per query";
    LOG(log_level::info) << "[" << thread_id << "]"
                         << " Pointer chasing takes: " << ptr_chasing_time << " nanoseconds to execute queries, average: " << ptr_chasing_time / (split_queries[thread_id].size() / 32) / 1000 << " microseconds per query";
    LOG(log_level::info) << "[" << thread_id << "]"
                         << " Non pointer chasing takes: " << non_ptr_chasing_time << " nanoseconds to execute queries, average  " << non_ptr_chasing_time / (split_queries[thread_id].size() / 32) / 1000 << " microseconds per query";

    // Convert to double for floating-point division
    double p_double = static_cast<double>(ptr_chasing_time);
    double np_double = static_cast<double>(non_ptr_chasing_time);

    // Calculate the sum of the two numbers
    double total = p_double + np_double;

    // Calculate the percentage each number represents of the total
    double p_percentage = p_double / total;
    double np_percentage = np_double / total;

    // Output the percentages
    LOG(log_level::info) << "Percentage for ptr chasing: " << p_percentage;
    LOG(log_level::info) << "Percentage non ptr chasing: " << np_percentage;
}

void bench(int num_server_threads = 1)
{
    read_and_split(num_server_threads);
    std::vector<std::thread> threads;
    for (int j = 0; j < num_server_threads; j++)
    {
        threads.emplace_back(thread_work, j, FLAGS_num_queries / num_server_threads);
    }
    for (auto &t : threads)
    {
        t.join();
    }
}

int main(int argc, char *argv[])
{
    gflags::ParseCommandLineFlags(&argc, &argv, true);
    init();
    prepare();

    // int pid= getpid();
    // int cpid = fork();

    // if( cpid == 0)
    //{
    //     // child process .  Run your perf stat
    //     char buf[4096];
    //     sprintf(buf, "/usr/lib/linux-tools-5.4.0-166/perf stat -e task-clock,major-faults,minor-faults,context-switches,cpu-migrations,page-faults,cycles,instructions,cache-references,cache-misses -p %d   > stat.log 2>&1",pid);
    //     execl("/bin/sh", "sh", "-c", buf, NULL);
    // }
    // else
    //{
    //     // set the child the leader of its process group
    //     setpgid(cpid, 0);
    bench(FLAGS_num_server_threads);
    //    // stop perf stat by killing child process and all its descendants(sh, perf stat etc )
    //    kill(-cpid, SIGINT);
    //}
    // sleep(10);
    // kill(getpid(),SIGINT);
    return 0;
}
