#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/remove_rs

#delay0_remove10_e6_r2_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r3_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r4_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r5_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r6_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c1024
#delay0_remove10_e6_r2_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r3_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r4_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r5_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r6_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c2048
#delay0_remove10_e6_r2_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r3_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r4_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r5_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r6_size128_gto48_p65536_w65536_c4096 delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c4096
for configs_stor1 in delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c16384
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









