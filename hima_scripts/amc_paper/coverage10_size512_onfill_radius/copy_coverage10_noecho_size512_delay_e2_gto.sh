#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/coverage10_noecho_sizes_delay

for configs_stor1 in coverage10_noecho_size512_delay16_e2_gto48 coverage10_noecho_size512_delay32_e2_gto48 coverage10_noecho_size512_delay64_e2_gto48 coverage10_noecho_size512_delay128_e2_gto48 coverage10_noecho_size512_delay256_e2_gto48 coverage10_noecho_size512_delay512_e2_gto48 coverage10_noecho_size512_delay1024_e2_gto48 coverage10_noecho_size512_delay2048_e2_gto48 coverage10_noecho_size512_delay4096_e2_gto48 coverage10_noecho_size512_delay8192_e2_gto48 coverage10_noecho_size512_delay16384_e2_gto48 coverage10_noecho_size512_delay32768_e2_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









