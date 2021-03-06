#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/remove_rs

#delay0_remove10_e6_r2_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r3_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r4_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r5_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r6_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c1024
#delay0_remove10_e6_r2_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r3_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r4_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r5_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r6_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c2048
#delay0_remove10_e6_r2_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r3_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r4_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r5_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r6_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c4096
#delay0_remove10_e6_r8_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r9_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r10_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c8192 delay0_remove10_e6_r8_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r9_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r10_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c4096
#delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c2048
#delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c2048
#delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c256
for configs_stor1 in delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c128 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c128 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c128 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c128 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c128 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c128 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c128 delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c64 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c64 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c64 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c64 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c64 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c64 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c64
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









