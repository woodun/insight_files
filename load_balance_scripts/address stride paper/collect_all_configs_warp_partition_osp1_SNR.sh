#!/bin/sh

#specify your output file
source=/stor1/hwang07/warp_partition_osp_S
output=/stor1/hwang07/SNR_collection/warp_partition_osp1

#specify your config path in stor1
for configs_stor1 in wp0_osp_coverage50_gto48 wp0_osp_coverage50_lrr48 wp0_osp_coverage50_RR48 wp2_osp_coverage50_gto48 wp2_osp_coverage50_lrr48 wp2_osp_coverage50_RR48 wp4_osp_coverage50_gto48 wp4_osp_coverage50_lrr48 wp4_osp_coverage50_RR48
do

#13
mkdir $output/$configs_stor1
cd $source/$configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
cp $source/$configs_stor1/polybench/$benchmark/*_CPU.txt $output/$configs_stor1/
cp $source/$configs_stor1/polybench/$benchmark/*_GPU.txt $output/$configs_stor1/
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
cp $source/$configs_stor1/CUDA/$benchmark/*_CPU.txt $output/$configs_stor1/
cp $source/$configs_stor1/CUDA/$benchmark/*_GPU.txt $output/$configs_stor1/
cd ..
done

done