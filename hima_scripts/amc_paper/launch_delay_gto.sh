#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delay

#specify your config path in stor1
for configs_stor1 in AMC_delay16_size16_gto48 AMC_delay32_size16_gto48 AMC_delay64_size16_gto48 AMC_delay128_size16_gto48 AMC_delay256_size16_gto48 AMC_delay16_size32_gto48 AMC_delay32_size32_gto48 AMC_delay64_size32_gto48 AMC_delay128_size32_gto48 AMC_delay256_size32_gto48 AMC_delay16_size64_gto48 AMC_delay32_size64_gto48 AMC_delay64_size64_gto48 AMC_delay128_size64_gto48 AMC_delay256_size64_gto48 AMC_delay16_size128_gto48 AMC_delay32_size128_gto48 AMC_delay64_size128_gto48 AMC_delay128_size128_gto48 AMC_delay256_size128_gto48
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