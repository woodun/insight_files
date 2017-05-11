#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/sizes_delayonly

for configs_stor1 in AMC_size128_delayonly16_gto48 AMC_size128_delayonly32_gto48 AMC_size128_delayonly64_gto48 AMC_size128_delayonly128_gto48 AMC_size128_delayonly256_gto48 AMC_size128_delayonly512_gto48 AMC_size128_delayonly1024_gto48
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