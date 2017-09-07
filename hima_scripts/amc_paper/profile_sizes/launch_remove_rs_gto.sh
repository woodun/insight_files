#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/remove_rs

#delay0_remove10_e6_r2_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r3_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r4_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r5_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r6_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c1024
#delay0_remove10_e6_r2_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r3_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r4_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r5_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r6_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c8192
for configs_stor1 in delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c2048
do

#15
#GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
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
#8
#SCP FWT LPS BlackScholes SLA TRA CONS RAY
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SCP FWT LPS BlackScholes SLA TRA CONS RAY
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done