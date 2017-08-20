#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delayonly_sizes

#delay4096_remove0_e0_r0_size16_gto48_p8192_w8192 delay4096_remove0_e0_r0_size32_gto48_p8192_w8192 delay4096_remove0_e0_r0_size64_gto48_p8192_w8192 delay4096_remove0_e0_r0_size128_gto48_p8192_w8192 delay4096_remove0_e0_r0_size256_gto48_p8192_w8192 delay4096_remove0_e0_r0_size512_gto48_p8192_w8192 delay4096_remove0_e0_r0_size1024_gto48_p8192_w8192 delay4096_remove0_e0_r0_sizeinf_gto48_p8192_w8192

for configs_stor1 in delay16_remove0_e0_r0_sizeinf_gto48_p8192_w8192 delay32_remove0_e0_r0_sizeinf_gto48_p8192_w8192 delay64_remove0_e0_r0_sizeinf_gto48_p8192_w8192 delay128_remove0_e0_r0_sizeinf_gto48_p8192_w8192 delay256_remove0_e0_r0_sizeinf_gto48_p8192_w8192 delay512_remove0_e0_r0_sizeinf_gto48_p8192_w8192 delay1024_remove0_e0_r0_sizeinf_gto48_p8192_w8192 delay2048_remove0_e0_r0_sizeinf_gto48_p8192_w8192 delay8192_remove0_e0_r0_sizeinf_gto48_p8192_w8192 delay16384_remove0_e0_r0_sizeinf_gto48_p8192_w8192 delay32768_remove0_e0_r0_sizeinf_gto48_p8192_w8192 
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









