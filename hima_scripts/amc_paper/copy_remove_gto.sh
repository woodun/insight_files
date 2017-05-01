#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delay

for configs_stor1 in AMC_delay16_size16_gto48 AMC_delay32_size16_gto48 AMC_delay64_size16_gto48 AMC_delay128_size16_gto48 AMC_delay256_size16_gto48 AMC_delay16_size32_gto48 AMC_delay32_size32_gto48 AMC_delay64_size32_gto48 AMC_delay128_size32_gto48 AMC_delay256_size32_gto48 AMC_delay16_size64_gto48 AMC_delay32_size64_gto48 AMC_delay64_size64_gto48 AMC_delay128_size64_gto48 AMC_delay256_size64_gto48 AMC_delay16_size128_gto48 AMC_delay32_size128_gto48 AMC_delay64_size128_gto48 AMC_delay128_size128_gto48 AMC_delay256_size128_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









