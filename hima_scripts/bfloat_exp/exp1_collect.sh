#!/bin/sh

#####################################################
output=/sciclone/data10/hwang07/bfloat_collection/scope.txt
mother_dir=/sciclone/pscr/hwang07/bfloat_exp

for statistics in 'actual coverage all:' 'approximated_req_count_all:' 'total_access_count_all:' 'total_float_count_all:' 'total_int_count_all:' 'actual_redo:' 'actual_truncate:' 'bw_util=' 'dram_eff=' 'gpu_tot_ipc =' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate =' 'last threshold_length all:'
do

printf "%s\r\n" $statistics >> $output
for number in -126 -119 -112 -105 -98 -91 -84 -77 -70 -63 -56 -49 -42 -35 -28 -21 -14 -7 0 7 14 21 28 35 42 49 56 63 70 77 84 91 98 105 112 119 126
do

cat pbs_exp1_base.pbs | sed -e "s/TBD/uniform_float_one_side_exp$number/g" | sed -e "s/DBT/uniform_float_one_side_result$number/g" > $mother_dir/pbs_uniform_float_one_side_exp$number.pbs
cat pbs_exp1_base.pbs | sed -e "s/TBD/uniform_float_two_sides_exp$number/g" | sed -e "s/DBT/uniform_float_two_sides_result$number/g" > $mother_dir/pbs_uniform_float_two_sides_exp$number.pbs
cat pbs_exp1_base.pbs | sed -e "s/TBD/normal_float_one_side_exp$number/g" | sed -e "s/DBT/normal_float_one_side_result$number/g" > $mother_dir/pbs_normal_float_one_side_exp$number.pbs
cat pbs_exp1_base.pbs | sed -e "s/TBD/normal_float_two_sides_exp$number/g" | sed -e "s/DBT/normal_float_two_sides_result$number/g" > $mother_dir/pbs_normal_float_two_sides_exp$number.pbs

done #for number in


done #for statistics in

