#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/remove

for configs_stor1 in AMC_remove_size16_gto48 AMC_remove_size32_gto48 AMC_remove_size64_gto48 AMC_remove_size128_gto48 AMC_remove_sizeinf_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









