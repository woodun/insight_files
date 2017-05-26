#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/noecho_sizes_delayonly

for configs_stor1 in AMC_noecho_size256_delayonly16_gto48 AMC_noecho_size256_delayonly32_gto48 AMC_noecho_size256_delayonly64_gto48 AMC_noecho_size256_delayonly128_gto48 AMC_noecho_size256_delayonly256_gto48 AMC_noecho_size256_delayonly256_gto48 AMC_noecho_size256_delayonly1024_gto48 AMC_noecho_size256_delayonly2048_gto48 AMC_noecho_size256_delayonly4096_gto48 AMC_noecho_size256_delayonly8192_gto48 AMC_noecho_size256_delayonly16384_gto48 AMC_noecho_size256_delayonly32768_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV 2MM 3MM BICG 2DCONV 3DCONV GEMM
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SCP CONS FWT LPS BlackScholes
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done