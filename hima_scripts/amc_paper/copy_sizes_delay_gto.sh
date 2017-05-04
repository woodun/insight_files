#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/sizes_delay

for configs_stor1 in AMC_size16_delay16_gto48 AMC_size16_delay32_gto48 AMC_size16_delay64_gto48 AMC_size16_delay128_gto48 AMC_size16_delay256_gto48 AMC_size16_delay512_gto48 AMC_size32_delay16_gto48 AMC_size32_delay32_gto48 AMC_size32_delay64_gto48 AMC_size32_delay128_gto48 AMC_size32_delay256_gto48 AMC_size32_delay512_gto48 AMC_size64_delay16_gto48 AMC_size64_delay32_gto48 AMC_size64_delay64_gto48 AMC_size64_delay128_gto48 AMC_size64_delay256_gto48 AMC_size64_delay512_gto48 AMC_size128_delay16_gto48 AMC_size128_delay32_gto48 AMC_size128_delay64_gto48 AMC_size128_delay128_gto48 AMC_size128_delay256_gto48 AMC_size128_delay512_gto48 AMC_sizeinf_delay16_gto48 AMC_sizeinf_delay32_gto48 AMC_sizeinf_delay64_gto48 AMC_sizeinf_delay128_gto48 AMC_sizeinf_delay256_gto48 AMC_sizeinf_delay512_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









