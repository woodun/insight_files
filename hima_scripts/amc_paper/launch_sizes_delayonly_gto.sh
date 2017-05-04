#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/sizes_delayonly

#specify your config path in stor1
for configs_stor1 in AMC_size16_delayonly16_gto48 AMC_size16_delayonly32_gto48 AMC_size16_delayonly64_gto48 AMC_size16_delayonly128_gto48 AMC_size16_delayonly256_gto48 AMC_size16_delayonly512_gto48 AMC_size32_delayonly16_gto48 AMC_size32_delayonly32_gto48 AMC_size32_delayonly64_gto48 AMC_size32_delayonly128_gto48 AMC_size32_delayonly256_gto48 AMC_size32_delayonly512_gto48 AMC_size64_delayonly16_gto48 AMC_size64_delayonly32_gto48 AMC_size64_delayonly64_gto48 AMC_size64_delayonly128_gto48 AMC_size64_delayonly256_gto48 AMC_size64_delayonly512_gto48 AMC_size128_delayonly16_gto48 AMC_size128_delayonly32_gto48 AMC_size128_delayonly64_gto48 AMC_size128_delayonly128_gto48 AMC_size128_delayonly256_gto48 AMC_size128_delayonly512_gto48 AMC_sizeinf_delayonly16_gto48 AMC_sizeinf_delayonly32_gto48 AMC_sizeinf_delayonly64_gto48 AMC_sizeinf_delayonly128_gto48 AMC_sizeinf_delayonly256_gto48 AMC_sizeinf_delayonly512_gto48
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