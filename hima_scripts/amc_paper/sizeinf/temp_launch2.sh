#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/nocache_noecho_sizes_delayonly

for configs_stor1 in AMC_nocache_noecho_sizeinf_delayonly16_gto48 AMC_nocache_noecho_sizeinf_delayonly32_gto48 AMC_nocache_noecho_sizeinf_delayonly64_gto48 AMC_nocache_noecho_sizeinf_delayonly128_gto48 AMC_nocache_noecho_sizeinf_delayonly256_gto48 AMC_nocache_noecho_sizeinf_delayonly512_gto48 AMC_nocache_noecho_sizeinf_delayonly1024_gto48 AMC_nocache_noecho_sizeinf_delayonly2048_gto48 AMC_nocache_noecho_sizeinf_delayonly4096_gto48 AMC_nocache_noecho_sizeinf_delayonly8192_gto48 AMC_nocache_noecho_sizeinf_delayonly16384_gto48 AMC_nocache_noecho_sizeinf_delayonly32768_gto48
do

#figures: srad_v1 histo JPEG RAY
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in BlackScholes
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done