#!/bin/sh
#this one use applications_FEB

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor2/hwang07/modified_tsp

#coverage100_dynamic_tsp_nopc_size8_gto48 coverage10_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp6_tsp_coverage10_gto48
#coverage100_dynamic_tsp_nopc_size8_RR48 coverage20_dynamic_tsp_nopc_size8_RR48 coverage10_dynamic_tsp_nopc_size8_RR48 coverage15_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage15_gto48 wp6_tsp_coverage15_gto48 coverage5_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage5_gto48 wp6_tsp_coverage5_gto48
for configs_stor1 in coverage20_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage20_gto48 wp6_tsp_coverage20_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







