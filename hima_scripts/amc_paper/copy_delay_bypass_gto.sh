#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delay_bypass

for configs_stor1 in AMC_size128_delay16_bypass_gto48 AMC_size128_delay32_bypass_gto48 AMC_size128_delay64_bypass_gto48 AMC_size128_delay128_bypass_gto48 AMC_size128_delay256_bypass_gto48 AMC_size128_delay512_bypass_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









