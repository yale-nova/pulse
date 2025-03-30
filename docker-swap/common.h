/**
 * @file common.h
 * @brief Common code for docker benchmark
 */
#pragma once

#include <gflags/gflags.h>
#include <set>
#include <gflags/gflags.h>
// #include "HdrHistogram_c/src/hdr_histogram.h"

#define Ki(x) (static_cast<size_t>(x) * 1000)
#define Mi(x) (static_cast<size_t>(x) * 1000 * 1000)
#define Gi(x) (static_cast<size_t>(x) * 1000 * 1000 * 1000)
#define ACCESS_ONCE(x) (*(volatile decltype(x) *)&(x))

// Gflags

// Flags that must be used in every app. test_ms and num_processes are required
// in the app's config file by the autorun scripts.
DEFINE_uint64(test_ms, 0, "Test milliseconds");
DEFINE_uint64(sm_verbose, 0, "Print session management debug info");
DEFINE_uint64(datapath_verbose, 0, "Print datapath debug info");
DEFINE_uint64(num_processes, 0, "Number of eRPC processes in the cluster");
DEFINE_uint64(process_id, SIZE_MAX, "The global ID of this process");
DEFINE_uint64(numa_node, 0, "NUMA node for this process");
DEFINE_string(numa_0_ports, "", "Fabric ports on NUMA node 0, CSV, no spaces");
DEFINE_string(numa_1_ports, "", "Fabric ports on NUMA node 1, CSV, no spaces");
DEFINE_uint64(num_server_fg_threads, 0, "Number of server foreground threads");
DEFINE_uint64(num_server_bg_threads, 0, "Number of server background threads");
DEFINE_uint64(num_server_threads, 1, "Number of server threads");
DEFINE_uint64(num_client_threads, 1, "Number of client threads");
DEFINE_uint64(window_size, 1, "Outstanding requests per client thread");
