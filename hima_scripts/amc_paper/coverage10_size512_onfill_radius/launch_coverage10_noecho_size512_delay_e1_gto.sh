#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/coverage10_noecho_sizes_delay

for configs_stor1 in coverage10_noecho_size512_delay16_e1_gto48 coverage10_noecho_size512_delay32_e1_gto48 coverage10_noecho_size512_delay64_e1_gto48 coverage10_noecho_size512_delay128_e1_gto48 coverage10_noecho_size512_delay256_e1_gto48 coverage10_noecho_size512_delay512_e1_gto48 coverage10_noecho_size512_delay1024_e1_gto48 coverage10_noecho_size512_delay2048_e1_gto48 coverage10_noecho_size512_delay4096_e1_gto48
do

#13
#2DCONV_BLUR 2DCONV_EMBOSS
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