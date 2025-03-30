#!/usr/bin/env bash
# Usage: do.sh [appname] [process_id] [NUMA node] <gdb>

# Utilities for other scripts
# Echo in blue color. Actually, is yellow.
function blue() {
	es=`tput setaf 3`
	ee=`tput sgr0`
	echo "${es}$1${ee}"
}

# Drop all SHM
function drop_shm() {
	for i in $(ipcs -m | awk '{ print $1; }'); do
		if [[ $i =~ 0x.* ]]; then
			sudo ipcrm -M $i 2>/dev/null
		fi
	done
}

# Check if an environment variable is set. If it is not, exit.
function check_env() {
  if [ -z "$1" ]; then
    echo "utils: Environment variable $1 not set. Exiting."
    exit
  fi
}

# Check if a file ($1) exists. If it does not, exit.
function assert_file_exists() {
  if [ ! -f $1 ]; then
    echo "utils: File $1 not found! Exiting."
    exit 0
  fi
}

# Check if there are at least 512 hugepages. If not, exit.
function hugepages_or_exit() {
  num_hugepages=`cat /sys/devices/system/node/*/meminfo | \
    grep "Node 0 HugePages_Total" | \
    cut -d":" -f 2 | \
    sed -e 's/ *//'`

  if [ $num_hugepages -lt 512 ]; then
    echo "Insufficient hugepages"
  fi
}



export MLX4_SINGLE_THREADED=1
export MLX5_SINGLE_THREADED=1
export MLX5_SHUT_UP_BF=0
export MLX_QP_ALLOC_TYPE="HUGE"
export MLX_CQ_ALLOC_TYPE="HUGE"

# Check arguments
if [ "$#" -gt 5 ] || [ "$#" -lt 4 ]; then
  blue "Illegal args. Usage: do.sh [app] [process_id] [NUMA node] [config] <gdb>"
	exit
fi

autorun_app=$1
epid=$2
numa_node=$3
config=$4

assert_file_exists build/apps/$autorun_app
chmod +x build/apps/$autorun_app # Fix permissions messed up by lsyncd

# Non-GDB mode
if [ "$#" -eq 4 ]; then
  blue "do.sh: Launching process $epid on NUMA node $numa_node"

  sudo -E env LD_LIBRARY_PATH=$LD_LIBRARY_PATH \
    numactl --cpunodebind=$numa_node --membind=$numa_node \
    ./build/apps/$autorun_app $(cat $config) \
    --process_id $epid --numa_node $numa_node
fi

# GDB mode
if [ "$#" -eq 5 ]; then
  blue "do.sh: Launching process $epid with GDB"
  sudo -E env LD_LIBRARY_PATH=$LD_LIBRARY_PATH \
    gdb -ex run --args \
    ./build/apps/$autorun_app $(cat $config) \
    --process_id $epid --numa_node $numa_node
fi
