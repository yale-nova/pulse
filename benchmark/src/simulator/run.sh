#!/bin/bash

#python3 distribute_analysis_bplustree.py test /var/data/yupeng/btrdb_layout_1 1073741824 4 agg | tee result/log_1_1073741824_4_agg
#python3 distribute_analysis_bplustree.py test /var/data/yupeng/bplustree_layout_1_2 1073741824 4 scan | tee result/log_1_1073741824_4_scan
#python3 distribute_analysis_bplustree.py test /var/data/yupeng/btrdb_layout_1 2097152 4 agg | tee result/log_1_2097152_4_agg
#python3 distribute_analysis_bplustree.py test /var/data/yupeng/bplustree_layout_1_2 2097152 4 scan | tee result/log_1_2097152_4_scan
#python3 distribute_analysis_bplustree.py test /var/data/yupeng/btrdb_layout_1 4096 4 agg | tee result/log_1_4096_4_agg
python3 distribute_analysis_bplustree.py test /var/data/yupeng/bplustree_layout_1_2 4096 4 scan | tee result/log_1_4096_4_scan