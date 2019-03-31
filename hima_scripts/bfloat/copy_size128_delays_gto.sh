#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/pscr/hwang07/bfloat_exp

for configs_stor1 in sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_baseline sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_removeall
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done

