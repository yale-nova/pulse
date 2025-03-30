#!/bin/bash


# 1 Size in GB
# 2 container ID

# Update configuration of one or more containers
# 
#   --blkio-weight          Block IO (relative weight), between 10 and 1000
#   --cpu-shares            CPU shares (relative weight)
#   --cpu-period            Limit CPU CFS (Completely Fair Scheduler) period
#   --cpu-quota             Limit CPU CFS (Completely Fair Scheduler) quota
#   --cpuset-cpus           CPUs in which to allow execution (0-3, 0,1)
#   --cpuset-mems           MEMs in which to allow execution (0-3, 0,1)
#   --help                  Print usage
#   --kernel-memory         Kernel memory limit
#   -m, --memory            Memory limit
#   --memory-reservation    Memory soft limit
#   --memory-swap           Swap limit equal to memory plus swap: '-1' to enable unlimited swap
#   --restart               Restart policy to apply when a container exits

sudo docker update -m ${1}G $2 