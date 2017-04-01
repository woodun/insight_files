#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor2/hwang07/last_accurate_tsp

for configs_stor1 in coverage10_dynamic_tsp_nopc_size8_gto48 coverage20_dynamic_tsp_nopc_size8_gto48 coverage30_dynamic_tsp_nopc_size8_gto48 coverage40_dynamic_tsp_nopc_size8_gto48 coverage50_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp0_tsp_coverage20_gto48 wp0_tsp_coverage30_gto48 wp0_tsp_coverage40_gto48 wp0_tsp_coverage50_gto48 wp2_tsp_coverage10_gto48 wp2_tsp_coverage20_gto48 wp2_tsp_coverage30_gto48 wp2_tsp_coverage40_gto48 wp2_tsp_coverage50_gto48 wp4_tsp_coverage10_gto48 wp4_tsp_coverage20_gto48 wp4_tsp_coverage30_gto48 wp4_tsp_coverage40_gto48 wp4_tsp_coverage50_gto48 wp6_tsp_coverage10_gto48 wp6_tsp_coverage20_gto48 wp6_tsp_coverage30_gto48 wp6_tsp_coverage40_gto48 wp6_tsp_coverage50_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









