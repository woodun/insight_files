#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/nocache_sizes_delayonly

for configs_stor1 in AMC_nocache_sizeinf_delayonly16_gto48 AMC_nocache_sizeinf_delayonly32_gto48 AMC_nocache_sizeinf_delayonly64_gto48 AMC_nocache_sizeinf_delayonly128_gto48 AMC_nocache_sizeinf_delayonly256_gto48 AMC_nocache_sizeinf_delayonly512_gto48 AMC_nocache_sizeinf_delayonly1024_gto48 AMC_nocache_sizeinf_delayonly2048_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









