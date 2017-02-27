#!/bin/sh

#specify your output file
output=/stor1/hwang07/32based_paper_collection/32based_coverage25.txt

for statistics in 'gpu_tot_ipc =' 'bwutil_global_read=' 'bwutil_global_write=' 'Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =' 'predictor coverage0:' 'ACT_percRelativeError ' 'ACT_percRelativeError_skipzero ' 'average_avg_bias:'
do

#12 configs total
#specify your config path in stor1
for configs_stor1 in /stor2/hwang07/32based_coverage_dynamic_S/32based_coverage25_dynamic_gto48 /stor1/hwang07/32based_coverage_dynamic_nopc_S/32based_coverage25_dynamic_nopc_gto48 /stor2/hwang07/32based_coverage_osp_S/32based_coverage25_osp_gto48 /stor2/hwang07/32based_coverage_osp_nopc_S/32based_coverage25_osp_nopc_gto48 /stor2/hwang07/32based_coverage_tsp_S/32based_coverage25_tsp_gto48 /stor1/hwang07/32based_coverage_tsp_nopc_S/32based_coverage25_tsp_nopc_gto48 /stor1/hwang07/32based_warp_partition_osp_S/32based_wp4_osp_coverage25_gto48 /stor1/hwang07/32based_warp_partition_tsp_S/32based_wp4_tsp_coverage25_gto48 /stor1/hwang07/32based_warp_partition_osp_S/32based_wp2_osp_coverage25_gto48 /stor1/hwang07/32based_warp_partition_tsp_S/32based_wp2_tsp_coverage25_gto48 /stor1/hwang07/32based_warp_partition_osp_S/32based_wp0_osp_coverage25_gto48 /stor1/hwang07/32based_warp_partition_tsp_S/32based_wp0_tsp_coverage25_gto48
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
