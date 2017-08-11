#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delayonly_sizes

for configs_stor1 in delay4096_remove0_e0_r0_size16_gto48_p8192_w8192 delay4096_remove0_e0_r0_size32_gto48_p8192_w8192 delay4096_remove0_e0_r0_size64_gto48_p8192_w8192 delay4096_remove0_e0_r0_size128_gto48_p8192_w8192 delay4096_remove0_e0_r0_size256_gto48_p8192_w8192 delay4096_remove0_e0_r0_size512_gto48_p8192_w8192 delay4096_remove0_e0_r0_size1024_gto48_p8192_w8192 delay4096_remove0_e0_r0_sizeinf_gto48_p8192_w8192
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









