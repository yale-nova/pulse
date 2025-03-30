#!/bin/bash

# Default value for local_flag is false
local_flag=false

# Parse command-line arguments
while getopts "l" opt; do
  case $opt in
    l) local_flag=true ;;
    \?) echo "Invalid option -$OPTARG" >&2; exit 1 ;;
  esac
done

cd pc_core_pack
vivado -mode batch -source ./pc_core.tcl
cp -r imports ./pc_core/

# Check the local_flag and run the appropriate command
if [ "$local_flag" = true ]; then
  vivado -mode batch -source ./pack_rtl_kernel_local.tcl
else
  vivado -mode batch -source ./pack_rtl_kernel.tcl
fi

