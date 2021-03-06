#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/noecho_delay_bypass

for configs_stor1 in AMC_noecho_size128_delay16_bypass_gto48 AMC_noecho_size128_delay32_bypass_gto48 AMC_noecho_size128_delay64_bypass_gto48 AMC_noecho_size128_delay128_bypass_gto48 AMC_noecho_size128_delay256_bypass_gto48 AMC_noecho_size128_delay512_bypass_gto48 AMC_noecho_size128_delay1024_bypass_gto48
do

#13
#global read only too few:FDTD-2D
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
#global read only too few:TRA
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