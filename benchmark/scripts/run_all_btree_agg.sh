#!/bin/bash
sudo ./benchmark/btree_agg_local $(cat ../benchmark/config/btree_agg_local_1_layout)
sudo ./benchmark/btree_agg_local $(cat ../benchmark/config/btree_agg_local_2_layout)
sudo ./benchmark/btree_agg_local $(cat ../benchmark/config/btree_agg_local_3_layout)