#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/coverage10_noecho_sizes_delayonly

for configs_stor1 in coverage10_noecho_size512_delayonly16_gto48 coverage10_noecho_size512_delayonly32_gto48 coverage10_noecho_size512_delayonly64_gto48 coverage10_noecho_size512_delayonly128_gto48 coverage10_noecho_size512_delayonly256_gto48 coverage10_noecho_size512_delayonly512_gto48 coverage10_noecho_size512_delayonly1024_gto48 coverage10_noecho_size512_delayonly2048_gto48 coverage10_noecho_size512_delayonly4096_gto48 coverage10_noecho_size512_delayonly8192_gto48 coverage10_noecho_size512_delayonly16384_gto48 coverage10_noecho_size512_delayonly32768_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
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
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done