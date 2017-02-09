#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/collect_all_configs_coverage_tsp_nopc_figure15.txt

for statistics in 'gpu_tot_ipc =' 'bwutil_global_read=' 'bwutil_global_write=' 'Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =' 'predictor coverage0:' 'ACT_percRelativeError ' 'ACT_percRelativeError_skipzero ' 'average_avg_bias:'
do

#specify your config path in stor1
for configs_stor1 in /stor1/hwang07/coverage_tsp_nopc_S/coverage25_tsp_nopc_gto48 /stor1/hwang07/coverage_tsp_nopc_S/coverage40_tsp_nopc_gto48 /stor1/hwang07/coverage_tsp_nopc_S/coverage44_tsp_nopc_gto48 /stor1/hwang07/coverage_tsp_nopc_S/coverage50_tsp_nopc_gto48
do

#13
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
