#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor1/hwang07/nb_asap/coverages

for configs_stor1 in coverage5_dynamic_tsp_nopc_size8_gto48_wattch1_nb wp0_tsp_coverage5_gto48_wattch1_nb wp6_tsp_coverage5_gto48_wattch1_nb coverage10_dynamic_tsp_nopc_size8_gto48_wattch1_nb wp0_tsp_coverage10_gto48_wattch1_nb wp6_tsp_coverage10_gto48_wattch1_nb coverage15_dynamic_tsp_nopc_size8_gto48_wattch1_nb wp0_tsp_coverage15_gto48_wattch1_nb wp6_tsp_coverage15_gto48_wattch1_nb coverage20_dynamic_tsp_nopc_size8_gto48_wattch1_nb wp0_tsp_coverage20_gto48_wattch1_nb wp6_tsp_coverage20_gto48_wattch1_nb
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







