#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/profile_sizes


#delay0_remove0_e0_r0_size16_gto48_p8192_w8192 delay0_remove0_e0_r0_size32_gto48_p8192_w8192 delay0_remove0_e0_r0_size64_gto48_p8192_w8192 delay0_remove0_e0_r0_size128_gto48_p8192_w8192 delay0_remove0_e0_r0_size256_gto48_p8192_w8192 delay0_remove0_e0_r0_size512_gto48_p8192_w8192 delay0_remove0_e0_r0_size1024_gto48_p8192_w8192 delay0_remove0_e0_r0_sizeinf_gto48_p8192_w8192

for configs_stor1 in delay0_remove0_e0_r0_size512_gto48_p8192_w8192 delay0_remove0_e0_r0_size512_gto48_p16384_w16384 delay0_remove0_e0_r0_size512_gto48_p32768_w32768
do

#15
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
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