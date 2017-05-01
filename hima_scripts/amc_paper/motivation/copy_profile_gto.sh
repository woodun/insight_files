#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/profile

for configs_stor1 in AMC_profile_size16_gto48 AMC_profile_size32_gto48 AMC_profile_size64_gto48 AMC_profile_size128_gto48 AMC_profile_sizeinf_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









