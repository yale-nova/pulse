#!/bin/bash
rm result
touch result
#sudo ./benchmark/hashtable_local $(cat ../benchmark/config/hashtable_local_2_layout)
#sudo ./benchmark/hashtable_local $(cat ../benchmark/config/hashtable_local_2_zipf_layout)
#sudo ./benchmark/hashtable_local $(cat ../benchmark/config/hashtable_local_3_layout)
#sudo ./benchmark/hashtable_local $(cat ../benchmark/config/hashtable_local_3_zipf_layout)
#sudo ./benchmark/hashtable_local $(cat ../benchmark/config/hashtable_local_4_layout)
#sudo ./benchmark/hashtable_local $(cat ../benchmark/config/hashtable_local_4_zipf_layout)
python3 ../benchmark/scripts/parse_bucket_layout.py /var/data/yupeng/hashtable_bucket_layout_2 2 200000000 >> result
python3 ../benchmark/scripts/parse_bucket_layout.py /var/data/yupeng/hashtable_bucket_layout_2_zipf 2 200000000 >> result
python3 ../benchmark/scripts/parse_bucket_layout.py /var/data/yupeng/hashtable_bucket_layout_3 3 300000000 >> result
python3 ../benchmark/scripts/parse_bucket_layout.py /var/data/yupeng/hashtable_bucket_layout_3_zipf 3 300000000 >> result
python3 ../benchmark/scripts/parse_bucket_layout.py /var/data/yupeng/hashtable_bucket_layout_4 4 400000000 >> result
python3 ../benchmark/scripts/parse_bucket_layout.py /var/data/yupeng/hashtable_bucket_layout_4_zipf 4 400000000 >> result