#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor2/hwang07/final_coverage_tsp

for configs_stor1 in coverage100_dynamic_tsp_nopc_size8_gto48 coverage100_dynamic_tsp_nopc_size8_lrr48 coverage100_dynamic_tsp_nopc_size8_RR48 coverage75_dynamic_tsp_nopc_size8_lrr48 coverage75_dynamic_tsp_nopc_size8_RR48 coverage50_dynamic_tsp_nopc_size8_lrr48 coverage50_dynamic_tsp_nopc_size8_RR48 coverage25_dynamic_tsp_nopc_size8_lrr48 coverage25_dynamic_tsp_nopc_size8_RR48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









