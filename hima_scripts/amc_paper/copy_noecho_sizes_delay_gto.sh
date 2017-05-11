#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/noecho_sizes_delay

for configs_stor1 in AMC_noecho_size128_delay16_gto48 AMC_noecho_size128_delay32_gto48 AMC_noecho_size128_delay64_gto48 AMC_noecho_size128_delay128_gto48 AMC_noecho_size128_delay256_gto48 AMC_noecho_size128_delay512_gto48 AMC_noecho_size128_delay1024_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









