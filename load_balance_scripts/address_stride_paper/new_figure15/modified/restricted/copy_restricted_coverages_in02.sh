#!/bin/sh
#this one use applications_FEB

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor2/hwang07/restricted_asap

#coverage5_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_gto48_wattch1 coverage15_dynamic_tsp_nopc_size8_gto48_wattch1 coverage20_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_RR48 coverage20_dynamic_tsp_nopc_size8_RR48 dynamic_nolong_nopc_gto48 coverage100_dynamic_tsp_nopc_size8_RR48
#coverage5_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_gto48_wattch1 coverage15_dynamic_osp_nopc_size8_gto48_wattch1 coverage20_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_RR48 coverage20_dynamic_osp_nopc_size8_RR48 coverage100_dynamic_osp_nopc_size8_RR48

for configs_stor1 in coverage5_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_gto48_wattch1 coverage15_dynamic_tsp_nopc_size8_gto48_wattch1 coverage20_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_RR48 coverage20_dynamic_tsp_nopc_size8_RR48 dynamic_nolong_nopc_gto48 coverage100_dynamic_tsp_nopc_size8_RR48 coverage5_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_gto48_wattch1 coverage15_dynamic_osp_nopc_size8_gto48_wattch1 coverage20_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_RR48 coverage20_dynamic_osp_nopc_size8_RR48 coverage100_dynamic_osp_nopc_size8_RR48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







