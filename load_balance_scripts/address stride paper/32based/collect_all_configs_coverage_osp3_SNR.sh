#!/bin/sh

#specify your output file
source=/stor2/hwang07/coverage_osp_S
output=/stor1/hwang07/SNR_collection/osp3

#specify your config path in stor1
for configs_stor1 in coverage50_osp_gto48 coverage50_osp_lrr48 coverage50_osp_RR48
do

mkdir $output/$configs_stor1

#13
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cp $source/$configs_stor1/polybench/$benchmark/*_CPU.txt $output/$configs_stor1/
cp $source/$configs_stor1/polybench/$benchmark/*_GPU.txt $output/$configs_stor1/
done

#figures: JPEG RAY srad_v1 histo
#7
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cp $source/$configs_stor1/CUDA/$benchmark/*_CPU.txt $output/$configs_stor1/
cp $source/$configs_stor1/CUDA/$benchmark/*_GPU.txt $output/$configs_stor1/
done

done
