#!/bin/bash

# Check if the file path is provided and the file exists
if [[ -z "$1" || ! -f "$1" ]]; then
    echo "Usage: $0 <filepath>"
    exit 1
fi

# Read the data once, filter and keep last 3000 entries of interest
data=$(grep Latency "$1" | tail -1000)

# Calculate average of specific fields
net=$(echo "$data" | awk '{ sum += $10; n++ } END { if (n > 0) print sum / n; }')
echo "Network Latency: $net"

proc=$(echo "$data" | awk '{ sum += $18; n++ } END { if (n > 0) print sum / n; }')
echo "Processing Latency: $proc"

cache=$(echo "$data" | awk '{ sum += $26; n++ } END { if (n > 0) print sum / n; }')
echo "Cache Latency: $cache"

cachehitrate=$(echo "$data" | awk '{ sum += $43; n++ } END { if (n > 0) printf "%.10f",sum / n; }')

# Perform floating-point arithmetic using 'bc'
# Calculate total latency based on the formula given
total=$(bc <<< "$cache * $cachehitrate + $net * (1 - $cachehitrate)")

echo "Total Latency: $total"

tpt=$(echo "$data" | awk '{ sum += $NF; n++ } END { if (n > 0) print sum / n; }')
echo "Throughput for a single thread: $tpt"
