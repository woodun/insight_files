#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/warp_partition_osp_profile1.txt

for statistics in 'gpu_tot_ipc =' 'sum_count:' 'avg_abs_stride_diff_sn:' 'avg_abs_stride_diff_s1:' 'avg_abs_stride_bias_sn:' 'avg_abs_stride_bias_s1:'
do

#specify your config path in stor1
for configs_stor1 in /stor1/hwang07/warp_partition_osp_profile_S/wp0_osp_profile_gto48 /stor1/hwang07/warp_partition_osp_profile_S/wp0_osp_profile_lrr48 /stor1/hwang07/warp_partition_osp_profile_S/wp0_osp_profile_RR48 /stor1/hwang07/warp_partition_osp_profile_S/wp2_osp_profile_gto48 /stor1/hwang07/warp_partition_osp_profile_S/wp2_osp_profile_lrr48 /stor1/hwang07/warp_partition_osp_profile_S/wp2_osp_profile_RR48 /stor1/hwang07/warp_partition_osp_profile_S/wp4_osp_profile_gto48 /stor1/hwang07/warp_partition_osp_profile_S/wp4_osp_profile_lrr48 /stor1/hwang07/warp_partition_osp_profile_S/wp4_osp_profile_RR48
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
