#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/collect_all_configs_warp_partition2_osp_figure15.txt
mother_dir=/stor1/hwang07/warp_partition_osp_S/

for statistics in 'gpu_tot_ipc =' 'bwutil_global_read=' 'bwutil_global_write=' 'Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =' 'predictor coverage0:' 'ACT_percRelativeError ' 'ACT_percRelativeError_skipzero ' 'average_avg_bias:'
do

#specify your config path in stor1
for configs_stor1 in wp2_osp_coverage10_gto48 wp2_osp_coverage125_gto48 wp2_osp_coverage143_gto48 wp2_osp_coverage167_gto48 wp2_osp_coverage20_gto48 wp2_osp_coverage33_gto48 wp2_osp_coverage375_gto48 wp2_osp_coverage555_gto48 wp2_osp_coverage625_gto48 wp2_osp_coverage666_gto48 wp2_osp_coverage70_gto48 wp2_osp_coverage75_gto48 wp2_osp_coverage80_gto48 wp2_osp_coverage833_gto48 wp2_osp_coverage857_gto48 wp2_osp_coverage875_gto48 wp2_osp_coverage90_gto48
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
