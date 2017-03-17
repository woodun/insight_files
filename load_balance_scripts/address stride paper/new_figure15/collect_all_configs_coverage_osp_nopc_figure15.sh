#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/collect_all_configs_coverage_osp_nopc_figure15.txt
mother_dir=/stor2/hwang07/coverage_osp_nopc_S/

for statistics in 'gpu_tot_ipc =' 'bwutil_global_read=' 'bwutil_global_write=' 'Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =' 'predictor coverage0:' 'ACT_percRelativeError ' 'ACT_percRelativeError_skipzero ' 'average_avg_bias:'
do

#specify your config path in stor1
for configs_stor1 in coverage10_osp_nopc_gto48 coverage125_osp_nopc_gto48 coverage143_osp_nopc_gto48 coverage167_osp_nopc_gto48 coverage20_osp_nopc_gto48 coverage33_osp_nopc_gto48 coverage375_osp_nopc_gto48 coverage555_osp_nopc_gto48 coverage625_osp_nopc_gto48 coverage666_osp_nopc_gto48 coverage70_osp_nopc_gto48 coverage75_osp_nopc_gto48 coverage80_osp_nopc_gto48 coverage833_osp_nopc_gto48 coverage857_osp_nopc_gto48 coverage875_osp_nopc_gto48 coverage90_osp_nopc_gto48
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
cd $mother_dir
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
