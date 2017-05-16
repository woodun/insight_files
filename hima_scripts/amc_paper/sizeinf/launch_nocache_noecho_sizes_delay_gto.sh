#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/nocache_noecho_sizes_delay

for configs_stor1 in AMC_nocache_noecho_sizeinf_delay16_gto48 AMC_nocache_noecho_sizeinf_delay32_gto48 AMC_nocache_noecho_sizeinf_delay64_gto48 AMC_nocache_noecho_sizeinf_delay128_gto48 AMC_nocache_noecho_sizeinf_delay256_gto48 AMC_nocache_noecho_sizeinf_delay512_gto48 AMC_nocache_noecho_sizeinf_delay1024_gto48 AMC_nocache_noecho_sizeinf_delay2048_gto48 AMC_nocache_noecho_sizeinf_delay4096_gto48 AMC_nocache_noecho_sizeinf_delay8192_gto48 AMC_nocache_noecho_sizeinf_delay16384_gto48 AMC_nocache_noecho_sizeinf_delay32768_gto48
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