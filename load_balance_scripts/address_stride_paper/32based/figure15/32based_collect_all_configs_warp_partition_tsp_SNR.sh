#!/bin/sh

#specify your output file
#source is osp, this is where it is(by earlier mistakes)
source=/stor1/hwang07/32based_warp_partition_osp_S
output=/stor1/hwang07/32based_SNR_collection/32based_warp_partition_tsp

#specify your config path in stor1
for configs_stor1 in 32based_wp4_tsp_coverage50_gto48 32based_wp2_tsp_coverage50_gto48 32based_wp0_tsp_coverage50_gto48 32based_wp4_tsp_coverage25_gto48 32based_wp2_tsp_coverage25_gto48 32based_wp0_tsp_coverage25_gto48
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
