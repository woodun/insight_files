#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/noecho_sizes_delayonly

for configs_stor1 in AMC_noecho_size128_delayonly16_gto48 AMC_noecho_size128_delayonly32_gto48 AMC_noecho_size128_delayonly64_gto48 AMC_noecho_size128_delayonly128_gto48 AMC_noecho_size128_delayonly128_gto48 AMC_noecho_size128_delayonly128_gto48 AMC_noecho_size128_delayonly1024_gto48 AMC_noecho_size128_delayonly2048_gto48 AMC_noecho_size128_delayonly4096_gto48 AMC_noecho_size128_delayonly8192_gto48 AMC_noecho_size128_delayonly16384_gto48 AMC_noecho_size128_delayonly32768_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









