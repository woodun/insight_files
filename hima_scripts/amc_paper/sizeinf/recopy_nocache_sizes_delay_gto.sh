#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/nocache_sizes_delay

for configs_stor1 in AMC_nocache_sizeinf_delay4096_gto48 AMC_nocache_sizeinf_delay8192_gto48 AMC_nocache_sizeinf_delay16384_gto48 AMC_nocache_sizeinf_delay32768_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









