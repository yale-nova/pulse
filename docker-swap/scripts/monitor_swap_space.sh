#!/bin/bash

# System
watch grep '^Swap' /proc/meminfo  


# Docker

# Get docker container ID
# sudo docker ps -a

# Inspect memory usage
# sudo docker inspect 7b3289cc9a90 |  grep -P '((Memory)|(PID))'