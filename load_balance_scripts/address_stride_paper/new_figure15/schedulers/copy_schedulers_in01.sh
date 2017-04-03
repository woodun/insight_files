#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor1/hwang07/final_schedulers_osp

for configs_stor1 in coverage100_dynamic_osp_nopc_size8_lrr48 coverage100_dynamic_osp_nopc_size8_RR48 coverage20_dynamic_osp_nopc_size8_lrr48 coverage20_dynamic_osp_nopc_size8_RR48 wp0_osp_coverage20_lrr48 wp0_osp_coverage20_RR48 wp2_osp_coverage20_lrr48 wp2_osp_coverage20_RR48 wp6_osp_coverage20_lrr48 wp6_osp_coverage20_RR48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









