#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor1/hwang07/memonly_osp

for configs_stor1 in coverage5_dynamic_osp_nopc_size8_gto48_wattch_memonly wp0_osp_coverage5_gto48_wattch_memonly wp6_osp_coverage5_gto48_wattch_memonly coverage10_dynamic_osp_nopc_size8_gto48_wattch_memonly wp0_osp_coverage10_gto48_wattch_memonly wp6_osp_coverage10_gto48_wattch_memonly coverage15_dynamic_osp_nopc_size8_gto48_wattch_memonly wp0_osp_coverage15_gto48_wattch_memonly wp6_osp_coverage15_gto48_wattch_memonly coverage20_dynamic_osp_nopc_size8_gto48_wattch_memonly wp0_osp_coverage20_gto48_wattch_memonly wp6_osp_coverage20_gto48_wattch_memonly
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







