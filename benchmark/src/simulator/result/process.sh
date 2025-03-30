

cat log_1_1073741824_4_scan | tail -1 > wiredtiger_cdf_1073741824
cat log_1_2097152_4_scan | tail -1 > wiredtiger_cdf_2097152
cat log_1_4096_4_scan | tail -1 > wiredtiger_cdf_4096
cat log_1_1073741824_4_agg | tail -1 > btrdb_cdf_1073741824_5
cat log_1_1073741824_4_agg | tail -4 | head -1 > btrdb_cdf_1073741824_4
cat log_1_1073741824_4_agg | tail -7 | head -1 > btrdb_cdf_1073741824_3
cat log_1_1073741824_4_agg | tail -10 | head -1 > btrdb_cdf_1073741824_2
cat log_1_1073741824_4_agg | tail -13 | head -1 > btrdb_cdf_1073741824_1
cat log_1_2097152_4_agg | tail -1 > btrdb_cdf_2097152_5
cat log_1_2097152_4_agg | tail -4 | head -1 > btrdb_cdf_2097152_4
cat log_1_2097152_4_agg | tail -7 | head -1 > btrdb_cdf_2097152_3
cat log_1_2097152_4_agg | tail -10 | head -1 > btrdb_cdf_2097152_2
cat log_1_2097152_4_agg | tail -13 | head -1 > btrdb_cdf_2097152_1
cat log_1_4096_4_agg | tail -1 > btrdb_cdf_4096_5
cat log_1_4096_4_agg | tail -4 | head -1 > btrdb_cdf_4096_4
cat log_1_4096_4_agg | tail -7 | head -1 > btrdb_cdf_4096_3
cat log_1_4096_4_agg | tail -10 | head -1 > btrdb_cdf_4096_2
cat log_1_4096_4_agg | tail -13 | head -1 > btrdb_cdf_4096_1

