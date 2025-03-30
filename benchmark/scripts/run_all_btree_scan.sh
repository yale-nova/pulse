#!/bin/bash
sudo ./benchmark/btree_scan_local $(cat ../benchmark/config/btree_scan_local_2_layout)
sudo ./benchmark/btree_scan_local $(cat ../benchmark/config/btree_scan_local_3_layout)
sudo ./benchmark/btree_scan_local $(cat ../benchmark/config/btree_scan_local_4_layout)
