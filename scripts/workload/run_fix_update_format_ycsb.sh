./update_ycsb.sh /media/pmem0/yupeng/ycsbb_query_1 &> /media/pmem0/yupeng/ycsbb_query_1_new
mv /media/pmem0/yupeng/ycsbb_query_1_new /media/pmem0/yupeng/ycsbb_query_1
./update_ycsb.sh /media/pmem0/yupeng/ycsbb_query_2 &> /media/pmem0/yupeng/ycsbb_query_2_new
mv /media/pmem0/yupeng/ycsbb_query_2_new /media/pmem0/yupeng/ycsbb_query_2
./update_ycsb.sh /media/pmem0/yupeng/ycsbb_query_3 &> /media/pmem0/yupeng/ycsbb_query_3_new
mv /media/pmem0/yupeng/ycsbb_query_3_new /media/pmem0/yupeng/ycsbb_query_3
./update_ycsb.sh /media/pmem0/yupeng/ycsbb_query_4 &> /media/pmem0/yupeng/ycsbb_query_4_new
mv /media/pmem0/yupeng/ycsbb_query_4_new /media/pmem0/yupeng/ycsbb_query_4

# Zipf
./update_ycsb.sh /media/pmem0/yupeng/ycsbb_query_1_zipf &> /media/pmem0/yupeng/ycsbb_query_1_new_zipf
mv /media/pmem0/yupeng/ycsbb_query_1_new_zipf /media/pmem0/yupeng/ycsbb_query_1_zipf
./update_ycsb.sh /media/pmem0/yupeng/ycsbb_query_2_zipf &> /media/pmem0/yupeng/ycsbb_query_2_new_zipf
mv /media/pmem0/yupeng/ycsbb_query_2_new_zipf /media/pmem0/yupeng/ycsbb_query_2_zipf
./update_ycsb.sh /media/pmem0/yupeng/ycsbb_query_3_zipf &> /media/pmem0/yupeng/ycsbb_query_3_new_zipf
mv /media/pmem0/yupeng/ycsbb_query_3_new_zipf /media/pmem0/yupeng/ycsbb_query_3_zipf
./update_ycsb.sh /media/pmem0/yupeng/ycsbb_query_4_zipf &> /media/pmem0/yupeng/ycsbb_query_4_new_zipf
mv /media/pmem0/yupeng/ycsbb_query_4_new_zipf /media/pmem0/yupeng/ycsbb_query_4_zipf
