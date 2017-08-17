#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delayonly_sizes

for configs_stor1 in delay4096_remove0_e0_r0_size16_gto48_p8192_w8192 delay4096_remove0_e0_r0_size32_gto48_p8192_w8192 delay4096_remove0_e0_r0_size64_gto48_p8192_w8192 delay4096_remove0_e0_r0_size128_gto48_p8192_w8192 delay4096_remove0_e0_r0_size256_gto48_p8192_w8192 delay4096_remove0_e0_r0_size512_gto48_p8192_w8192 delay4096_remove0_e0_r0_size1024_gto48_p8192_w8192 delay4096_remove0_e0_r0_sizeinf_gto48_p8192_w8192
do

#15999041539
#15
#GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#SCP FWT LPS BlackScholes SLA
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in TRA CONS RAY
#relaunch ray, do not discard size16 when delaying (since it's there in motivation), adjust input size with size 16 for TRA, CONS and relaunch.
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done