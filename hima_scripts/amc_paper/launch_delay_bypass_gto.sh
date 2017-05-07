#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delay_bypass

#specify your config path in stor1
for configs_stor1 in AMC_size128_delay16_bypass_gto48 AMC_size128_delay32_bypass_gto48 AMC_size128_delay64_bypass_gto48 AMC_size128_delay128_bypass_gto48 AMC_size128_delay256_bypass_gto48 AMC_size128_delay512_bypass_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV 2MM 3MM BICG 2DCONV 3DCONV GEMM FDTD-2D
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
for benchmark in TRA SCP CONS FWT LPS BlackScholes
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done