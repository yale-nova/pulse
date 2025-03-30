#!/bin/bash
# cat log_1_1073741824_2 | grep "Zero count" | head -26 | awk  '{sum+=$9;} END{print sum/26;}' 

# 1 log file


cat $1 | grep "Zero count" | head -16 | awk  '{sum+=$9;} END{print sum/26;}' 
