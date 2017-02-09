#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/coverage_dynamic_nopc4.txt

for statistics in 'gpu_tot_ipc =' 'bwutil_global_read=' 'bwutil_global_write=' 'Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =' 'predictor coverage0:' 'ACT_percRelativeError ' 'ACT_percRelativeError_skipzero ' 'average_avg_bias:' 'predictable lines:' 'evict_to_update_rate_all:' 'evict_to_access_rate_all:'
do

#specify your config path in stor1
for configs_stor1 in /stor1/hwang07/dynamic_nopc_S/dynamic_nopc_gto48 /stor1/hwang07/dynamic_nopc_S/dynamic_nopc_lrr48 /stor1/hwang07/dynamic_nopc_S/dynamic_nopc_RR48
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG GRAMSCHM SYR2K
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA LPS SLA
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
