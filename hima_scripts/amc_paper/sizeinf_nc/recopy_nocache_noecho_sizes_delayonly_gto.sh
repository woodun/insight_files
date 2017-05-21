#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/nocache_noecho_sizes_delayonly

for configs_stor1 in AMC_nocache_noecho_sizeinf_delayonly4096_gto48 AMC_nocache_noecho_sizeinf_delayonly8192_gto48 AMC_nocache_noecho_sizeinf_delayonly16384_gto48 AMC_nocache_noecho_sizeinf_delayonly32768_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









