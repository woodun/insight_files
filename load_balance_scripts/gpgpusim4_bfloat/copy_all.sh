#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor1/hwang07/sim4_test

#AMC_profile_gto48
#titanx_baseline titanx_ncache titanx_baseline_l1 titanx_ncache_l1 titanx_halfncache titanx_halfncache_l1
for configs_stor1 in titanx_32bline titanx_32bline_l1
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









