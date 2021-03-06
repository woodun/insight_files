#these benchmarks output NAN except for ACT_percLossInQoR
#sh collect_all_configs_matlab_MD.sh GRAMSCHM polybench
#sh collect_all_configs_matlab_MD.sh lud rodinia
#sh collect_all_configs_matlab_MD.sh MD shoc
#sh collect_all_configs_matlab_MD.sh BlackScholes CUDA
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/approx/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/approx/

#specify your output file
output=/stor1/hwang07/profile/collect_matlab/$2_$1.txt

######################################################################ACT_percLossInQoR 50%#########################
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | tail -1 | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | tail -1 | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | tail -1 | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | tail -1 | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | tail -1 | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

######################################################################ACT_percLossInQoR 100%#########################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | tail -1 | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_lrrswl4 approx_100coverage_lrrswl8 approx_100coverage_lrrswl16 approx_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | tail -1 | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | tail -1 | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | tail -1 | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | tail -1 | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

###############################################################################IPC coverage 50%#########################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

###############################################################################IPC 0 coverage GTO48#########################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

##########################################avg_line_relativeError coverage 50%#########################################################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

##########################################avg_line_relativeError coverage 100%#########################################################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_lrrswl4 approx_100coverage_lrrswl8 approx_100coverage_lrrswl16 approx_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

###############################################################################Total_core_cache_stats_breakdown coverage 50%#########################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

###############################################################################Total_core_cache_stats_breakdown 0 coverage GTO48#########################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

###############################################################################L1D_total_cache_miss_rate coverage 50%#########################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

###############################################################################L1D_total_cache_miss_rate 0 coverage GTO48#########################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

###############################################################################bw_util 50 coverage GTO48#########################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

###############################################################################bw_util 0 coverage GTO48#########################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

###############################################################################bw_util 0 coverage GTO48#########################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_lrrswl4 approx_0coverage_lrrswl8 approx_0coverage_lrrswl16 approx_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

###############################################################################bw_util 0 coverage GTO48#########################
printf "\n" >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done