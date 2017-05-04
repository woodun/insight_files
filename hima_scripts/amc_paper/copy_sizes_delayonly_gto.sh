#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/sizes_delayonly

for configs_stor1 in AMC_size16_delayonly16_gto48 AMC_size16_delayonly32_gto48 AMC_size16_delayonly64_gto48 AMC_size16_delayonly128_gto48 AMC_size16_delayonly256_gto48 AMC_size16_delayonly512_gto48 AMC_size32_delayonly16_gto48 AMC_size32_delayonly32_gto48 AMC_size32_delayonly64_gto48 AMC_size32_delayonly128_gto48 AMC_size32_delayonly256_gto48 AMC_size32_delayonly512_gto48 AMC_size64_delayonly16_gto48 AMC_size64_delayonly32_gto48 AMC_size64_delayonly64_gto48 AMC_size64_delayonly128_gto48 AMC_size64_delayonly256_gto48 AMC_size64_delayonly512_gto48 AMC_size128_delayonly16_gto48 AMC_size128_delayonly32_gto48 AMC_size128_delayonly64_gto48 AMC_size128_delayonly128_gto48 AMC_size128_delayonly256_gto48 AMC_size128_delayonly512_gto48 AMC_sizeinf_delayonly16_gto48 AMC_sizeinf_delayonly32_gto48 AMC_sizeinf_delayonly64_gto48 AMC_sizeinf_delayonly128_gto48 AMC_sizeinf_delayonly256_gto48 AMC_sizeinf_delayonly512_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









