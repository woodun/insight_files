#!/bin/sh

#specify your output file
source=/stor1/hwang07/coverage_dynamic_nopc_S
output=/stor1/hwang07/SNR_collection/coverage75_dynamic_nopc3

#specify your config path in stor1
for configs_stor1 in coverage75_dynamic_nopc_gto48 coverage75_dynamic_nopc_lrr48 coverage75_dynamic_nopc_RR48
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
