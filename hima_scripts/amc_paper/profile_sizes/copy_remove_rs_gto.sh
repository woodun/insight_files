#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/remove_rs

#delay0_remove10_e6_r2_size512_gto48 delay0_remove10_e6_r3_size512_gto48 delay0_remove10_e6_r4_size512_gto48
for configs_stor1 in delay0_remove10_e6_r7_size512_gto48_p8192_w8192 delay0_remove10_e6_r8_size512_gto48_p8192_w8192 delay0_remove10_e6_r9_size512_gto48_p8192_w8192 delay0_remove10_e6_r10_size512_gto48_p8192_w8192 delay0_remove10_e6_r11_size512_gto48_p8192_w8192 delay0_remove10_e6_r12_size512_gto48_p8192_w8192 delay0_remove10_e6_r7_size512_gto48_p16384_w16384 delay0_remove10_e6_r8_size512_gto48_p16384_w16384 delay0_remove10_e6_r9_size512_gto48_p16384_w16384 delay0_remove10_e6_r10_size512_gto48_p16384_w16384 delay0_remove10_e6_r11_size512_gto48_p16384_w16384 delay0_remove10_e6_r12_size512_gto48_p16384_w16384
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









