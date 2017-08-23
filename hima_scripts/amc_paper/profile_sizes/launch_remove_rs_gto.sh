#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/remove_rs

#delay0_remove10_e6_r2_size512_gto48 delay0_remove10_e6_r3_size512_gto48 delay0_remove10_e6_r4_size512_gto48
#delay0_remove10_e6_r7_size512_gto48_p8192_w8192 delay0_remove10_e6_r8_size512_gto48_p8192_w8192 delay0_remove10_e6_r9_size512_gto48_p8192_w8192 delay0_remove10_e6_r10_size512_gto48_p8192_w8192 delay0_remove10_e6_r11_size512_gto48_p8192_w8192 delay0_remove10_e6_r12_size512_gto48_p8192_w8192 delay0_remove10_e6_r7_size512_gto48_p16384_w16384 delay0_remove10_e6_r8_size512_gto48_p16384_w16384 delay0_remove10_e6_r9_size512_gto48_p16384_w16384 delay0_remove10_e6_r10_size512_gto48_p16384_w16384 delay0_remove10_e6_r11_size512_gto48_p16384_w16384 delay0_remove10_e6_r12_size512_gto48_p16384_w16384
#delay0_remove10_e6_r12_size512_gto48_p32768_w32768 delay0_remove10_e6_r13_size512_gto48_p32768_w32768 delay0_remove10_e6_r14_size512_gto48_p32768_w32768 delay0_remove10_e6_r15_size512_gto48_p32768_w32768 delay0_remove10_e6_r16_size512_gto48_p32768_w32768 delay0_remove10_e6_r17_size512_gto48_p32768_w32768 
for configs_stor1 in delay0_remove10_e6_r18_size512_gto48_p65536_w65536 delay0_remove10_e6_r19_size512_gto48_p65536_w65536 delay0_remove10_e6_r20_size512_gto48_p65536_w65536 delay0_remove10_e6_r21_size512_gto48_p65536_w65536 delay0_remove10_e6_r22_size512_gto48_p65536_w65536 delay0_remove10_e6_r23_size512_gto48_p65536_w65536
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
for benchmark in SCP FWT LPS BlackScholes SLA TRA CONS RAY
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done