#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/nocache_noecho_sizes_delay

for configs_stor1 in AMC_nocache_noecho_sizeinf_delay16_gto48 AMC_nocache_noecho_sizeinf_delay32_gto48 AMC_nocache_noecho_sizeinf_delay64_gto48 AMC_nocache_noecho_sizeinf_delay128_gto48 AMC_nocache_noecho_sizeinf_delay256_gto48 AMC_nocache_noecho_sizeinf_delay512_gto48 AMC_nocache_noecho_sizeinf_delay1024_gto48 AMC_nocache_noecho_sizeinf_delay2048_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









