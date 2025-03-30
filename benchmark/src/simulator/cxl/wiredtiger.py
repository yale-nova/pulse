node_count_per_access = 25


cache_hit_rate = 0.2


local_cache_access = 10
local_memory_access = 50
remote_access = 300
remote_cache_access = 50
remote_process_latency = 7
local_process_latency = 2
average_jumps = 15



dram_time = local_cache_access * node_count_per_access * cache_hit_rate + local_memory_access * node_count_per_access * (1 - cache_hit_rate) + local_process_latency * node_count_per_access
cxl_without_pulse = local_cache_access * node_count_per_access * cache_hit_rate + (remote_access * node_count_per_access + remote_access * average_jumps) * (1- cache_hit_rate) + local_process_latency * node_count_per_access
cxl_with_pulse = (local_process_latency * node_count_per_access + local_cache_access * node_count_per_access) * cache_hit_rate + (1 - cache_hit_rate) * (remote_access + remote_process_latency * node_count_per_access + remote_cache_access * node_count_per_access + remote_access * average_jumps * 1/2)
print("WiredTiger\tDRAM\t" + str(dram_time / dram_time))
print("WiredTiger\tCXL w/o PULSE\t" + str(cxl_without_pulse / dram_time))
print("WiredTiger\tCXL w/ PULSE\t" + str(cxl_with_pulse / dram_time))
