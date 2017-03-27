#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/coverage_dynamic_nopc_all.txt
mother_dir=/stor1/hwang07/coverage_dynamic_nopc_S/

for statistics in 'gpu_tot_ipc =' 'bwutil_global_read=' 'bwutil_global_write=' 'Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =' 'predictor coverage0:' 'ACT_percRelativeError ' 'ACT_percRelativeError_skipzero ' 'average_avg_bias:' 
do

#specify your config path in stor1
for configs_stor1 in coverage10_dynamic_nopc_gto48 coverage125_dynamic_nopc_gto48 coverage143_dynamic_nopc_gto48 coverage167_dynamic_nopc_gto48 coverage20_dynamic_nopc_gto48 coverage33_dynamic_nopc_gto48 coverage375_dynamic_nopc_gto48 coverage555_dynamic_nopc_gto48 coverage625_dynamic_nopc_gto48 coverage666_dynamic_nopc_gto48 coverage70_dynamic_nopc_gto48 coverage75_dynamic_nopc_gto48 coverage80_dynamic_nopc_gto48 coverage833_dynamic_nopc_gto48 coverage857_dynamic_nopc_gto48 coverage875_dynamic_nopc_gto48 coverage90_dynamic_nopc_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG GRAMSCHM SYR2K
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA LPS SLA
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
