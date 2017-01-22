#!/bin/sh

#specify your output file
source=/stor1/hwang07/spatial_osp_S
output=/stor1/hwang07/SNR_collection/spatial_osp1

#specify your config path in stor1
for configs_stor1 in spatial_osp_gto48 spatial_osp_lrr48 spatial_osp_RR48
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
