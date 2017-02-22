#!/bin/sh

#specify your output file
source=/stor2/hwang07/coverage_osp_nopc_S
output=/stor1/hwang07/SNR_collection/coverage_osp_nopc_fig15

#specify your config path in stor1
for configs_stor1 in coverage25_osp_nopc_gto48 coverage40_osp_nopc_gto48 coverage44_osp_nopc_gto48 coverage50_osp_nopc_gto48
do

mkdir $output/$configs_stor1

#13
for benchmark in GESUMMV MVT SYRK ATAX BICG GRAMSCHM SYR2K
do
cp $source/$configs_stor1/polybench/$benchmark/*_CPU.txt $output/$configs_stor1/
cp $source/$configs_stor1/polybench/$benchmark/*_GPU.txt $output/$configs_stor1/
done

#figures: JPEG RAY srad_v1 histo
#7
for benchmark in TRA LPS SLA
do
cp $source/$configs_stor1/CUDA/$benchmark/*_CPU.txt $output/$configs_stor1/
cp $source/$configs_stor1/CUDA/$benchmark/*_GPU.txt $output/$configs_stor1/
done

done
