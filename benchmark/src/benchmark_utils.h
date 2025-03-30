#include <gflags/gflags.h>
#include <thread>
#include <numa.h>
#include <iostream>

#define ACCESS_ONCE(x) (*(volatile decltype(x) *)&(x))

// Numactl

#define ASSERT(condition, message)                                             \
    do                                                                         \
    {                                                                          \
        if (!(condition))                                                      \
        {                                                                      \
            std::cerr << "Assertion `" #condition "` failed in " << __FILE__   \
                      << " line " << __LINE__ << ": " << message << std::endl; \
            std::terminate();                                                  \
        }                                                                      \
    } while (false)

std::vector<size_t> get_lcores_for_numa_node(size_t numa_node)
{
    ASSERT(numa_node <= static_cast<size_t>(numa_max_node()), "");

    std::vector<size_t> ret;
    size_t num_lcores = static_cast<size_t>(numa_num_configured_cpus());

    for (size_t i = 0; i < num_lcores; i++)
    {
        if (numa_node == static_cast<size_t>(numa_node_of_cpu(i)))
        {
            ret.push_back(i);
        }
    }

    return ret;
}

void bind_to_core(std::thread &thread, size_t numa_node,
                  size_t numa_local_index)
{
    cpu_set_t cpuset;
    CPU_ZERO(&cpuset);
    ASSERT(numa_node <= 1, "Invalid NUMA node");

    const std::vector<size_t> lcore_vec = get_lcores_for_numa_node(numa_node);
    if (numa_local_index >= lcore_vec.size())
    {
        std::printf(
            "eRPC: Requested binding to core %zu (zero-indexed) on NUMA node %zu, "
            "which has only %zu cores. Ignoring, but this can cause very low "
            "performance.\n",
            numa_local_index, numa_node, lcore_vec.size());
        return;
    }

    const size_t global_index = lcore_vec.at(numa_local_index);

    CPU_SET(global_index, &cpuset);
    int rc = pthread_setaffinity_np(thread.native_handle(), sizeof(cpu_set_t),
                                    &cpuset);
    ASSERT(rc == 0, "Error setting thread affinity");
}

class BtrdbWorkloadGenerator {
    public:
        uint64_t start = 14436576000000000000;
        uint64_t counter = 0;
        uint64_t diff = 83333330;
        uint64_t fixed_bias = 0;
        uint64_t get_next() {
            if(counter % 27 == 0 && counter != 0) {
                fixed_bias += 10;
            }
            uint64_t result = start + counter / 9 * diff + counter % 9 + fixed_bias;
            counter++;
            return result;
        }

};