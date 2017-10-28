#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor2/hwang07/asap/coverages

#coverage100_dynamic_tsp_nopc_size8_gto48 coverage10_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp6_tsp_coverage10_gto48
#coverage100_dynamic_tsp_nopc_size8_RR48 coverage20_dynamic_tsp_nopc_size8_RR48 coverage10_dynamic_tsp_nopc_size8_RR48 coverage15_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage15_gto48 wp6_tsp_coverage15_gto48 coverage5_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage5_gto48 wp6_tsp_coverage5_gto48
#coverage20_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage20_gto48 wp6_tsp_coverage20_gto48

for configs_stor1 in coverage5_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage5_gto48_wattch1 wp6_osp_coverage5_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage10_gto48_wattch1 wp6_osp_coverage10_gto48_wattch1 coverage15_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage15_gto48_wattch1 wp6_osp_coverage15_gto48_wattch1 coverage20_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage20_gto48_wattch1 wp6_osp_coverage20_gto48_wattch1
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







