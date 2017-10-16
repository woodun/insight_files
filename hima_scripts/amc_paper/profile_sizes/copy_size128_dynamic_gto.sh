#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_dynamic_remove

for configs_stor1 in delay0_remove10D_e8_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e0_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e8_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e7_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e6_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e5_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e4_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e3_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e2_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e1_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









