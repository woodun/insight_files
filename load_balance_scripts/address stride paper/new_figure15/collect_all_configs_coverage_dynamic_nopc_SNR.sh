#!/bin/sh

#specify your output file
source=/stor1/hwang07/coverage_dynamic_nopc_S
output=/stor1/hwang07/SNR_collection/coverage_dynamic_nopc_all

#specify your config path in stor1
for configs_stor1 in coverage10_dynamic_nopc_gto48 coverage125_dynamic_nopc_gto48 coverage143_dynamic_nopc_gto48 coverage167_dynamic_nopc_gto48 coverage20_dynamic_nopc_gto48 coverage33_dynamic_nopc_gto48 coverage375_dynamic_nopc_gto48 coverage555_dynamic_nopc_gto48 coverage625_dynamic_nopc_gto48 coverage666_dynamic_nopc_gto48 coverage70_dynamic_nopc_gto48 coverage75_dynamic_nopc_gto48 coverage80_dynamic_nopc_gto48 coverage833_dynamic_nopc_gto48 coverage857_dynamic_nopc_gto48 coverage875_dynamic_nopc_gto48 coverage90_dynamic_nopc_gto48
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
