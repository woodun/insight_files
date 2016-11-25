#not in use
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/approx/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/approx/

#specify your output file
output=/stor1/hwang07/RW.txt

###############################################################################Total_core_cache_stats_breakdown 0 coverage GTO48#########################
printf "$2_$1:\r\n" >> $output
printf "GTO48 No prediction:\r\n" >> $output
for stor1_config in approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "gpu_stall_dramfull" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "gpu_stall_icnt2sh" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "gpu_total_sim_rate" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "L1D_total_cache_accesses =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L1D_total_cache_misses =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L1D_total_cache_miss_rate =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L1D_total_cache_reservation_fails =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[HIT\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[HIT_RESERVED\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[RESERVATION_FAIL\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_W\]\[MISS\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_W\]\[RESERVATION_FAIL\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "n_cmd=" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "n_activity=" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "L2_total_cache_accesses =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_total_cache_misses =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_total_cache_miss_rate =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_total_cache_reservation_fails =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "L2_cache_stats_breakdown\[GLOBAL_ACC_R\]\[HIT\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_R\]\[HIT_RESERVED\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_R\]\[RESERVATION_FAIL\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "L2_cache_stats_breakdown\[GLOBAL_ACC_W\]\[HIT\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_W\]\[HIT_RESERVED\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_W\]\[MISS\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_W\]\[RESERVATION_FAIL\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
done

###############################################################################Total_core_cache_stats_breakdown 50 coverage GTO48#########################
printf "$2_$1:\n" >> $output
printf "GTO48 50 percent prediction:\n" >> $output
for stor1_config in approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "gpu_stall_dramfull" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "gpu_stall_icnt2sh" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "gpu_total_sim_rate" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "L1D_total_cache_accesses =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L1D_total_cache_misses =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L1D_total_cache_miss_rate =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L1D_total_cache_reservation_fails =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[HIT\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[HIT_RESERVED\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[RESERVATION_FAIL\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_W\]\[MISS\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_W\]\[RESERVATION_FAIL\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "n_cmd=" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "n_activity=" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "L2_total_cache_accesses =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_total_cache_misses =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_total_cache_miss_rate =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_total_cache_reservation_fails =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "L2_cache_stats_breakdown\[GLOBAL_ACC_R\]\[HIT\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_R\]\[HIT_RESERVED\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_R\]\[RESERVATION_FAIL\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output

grep "L2_cache_stats_breakdown\[GLOBAL_ACC_W\]\[HIT\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_W\]\[HIT_RESERVED\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_W\]\[MISS\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
grep "L2_cache_stats_breakdown\[GLOBAL_ACC_W\]\[RESERVATION_FAIL\] =" output_* | tail -1 | xargs printf "   %s\r\n" >> $output
done
