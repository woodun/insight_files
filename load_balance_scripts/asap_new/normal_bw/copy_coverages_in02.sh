#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor2/hwang07/nb_asap/coverages

for configs_stor1 in coverage5_dynamic_osp_nopc_size8_gto48_wattch1_nb wp0_osp_coverage5_gto48_wattch1_nb wp6_osp_coverage5_gto48_wattch1_nb coverage10_dynamic_osp_nopc_size8_gto48_wattch1_nb wp0_osp_coverage10_gto48_wattch1_nb wp6_osp_coverage10_gto48_wattch1_nb coverage15_dynamic_osp_nopc_size8_gto48_wattch1_nb wp0_osp_coverage15_gto48_wattch1_nb wp6_osp_coverage15_gto48_wattch1_nb coverage20_dynamic_osp_nopc_size8_gto48_wattch1_nb wp0_osp_coverage20_gto48_wattch1_nb wp6_osp_coverage20_gto48_wattch1_nb
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







