#!/bin/sh
#this one use applications_FEB

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor1/hwang07/halfbw_osp

for configs_stor1 in halfbw_tsp_address_exp_gtoswl48_alloff halfbw_coverage5_dynamic_osp_nopc_size8_gto48 halfbw_coverage10_dynamic_osp_nopc_size8_gto48 halfbw_coverage15_dynamic_osp_nopc_size8_gto48 halfbw_coverage20_dynamic_osp_nopc_size8_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







