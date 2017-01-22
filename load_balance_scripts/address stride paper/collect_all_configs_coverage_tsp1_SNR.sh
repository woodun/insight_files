#!/bin/sh

#specify your output file
source=/stor2/hwang07/coverage_tsp_S
output=/stor1/hwang07/SNR_collection/tsp1

#specify your config path in stor1
for configs_stor1 in coverage50_tsp_gto48 coverage50_tsp_lrr48 coverage50_tsp_RR48
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
