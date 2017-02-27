#!/bin/sh

#specify your output file
source=/stor1/hwang07/32based_coverage_tsp_nopc_S
output=/stor1/hwang07/32based_SNR_collection/32based_coverage_tsp_nopc

#specify your config path in stor1
for configs_stor1 in 32based_coverage50_tsp_nopc_gto48 32based_coverage25_tsp_nopc_gto48
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
