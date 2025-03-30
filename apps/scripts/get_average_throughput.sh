#!/bin/bash

cat $1 | grep Latency | tail -10000 | awk '{ sum += $24; n++ } END { if (n > 0) print sum / n; }'