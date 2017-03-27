#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/warp_partition_osp1.txt

for statistics in 'gpu_tot_ipc =' 'bwutil_global_read=' 'bwutil_global_write=' 'Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =' 'predictor coverage0:' 'predictable lines:' 'evict_to_update_rate_all:' 'evict_to_access_rate_all:'
do

#specify your config path in stor1
for configs_stor1 in /stor1/hwang07/warp_partition_osp_S/wp0_osp_coverage50_gto48 /stor1/hwang07/warp_partition_osp_S/wp0_osp_coverage50_lrr48 /stor1/hwang07/warp_partition_osp_S/wp0_osp_coverage50_RR48 /stor1/hwang07/warp_partition_osp_S/wp2_osp_coverage50_gto48 /stor1/hwang07/warp_partition_osp_S/wp2_osp_coverage50_lrr48 /stor1/hwang07/warp_partition_osp_S/wp2_osp_coverage50_RR48 /stor1/hwang07/warp_partition_osp_S/wp4_osp_coverage50_gto48 /stor1/hwang07/warp_partition_osp_S/wp4_osp_coverage50_lrr48 /stor1/hwang07/warp_partition_osp_S/wp4_osp_coverage50_RR48
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
