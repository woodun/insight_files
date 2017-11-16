#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_dynamic_all

for configs_stor1 in delay128_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









