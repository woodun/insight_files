#!/bin/sh
#this one use applications_FEB

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor2/hwang07/restricted_asap

for configs_stor1 in coverage100_dynamic_osp_nopc_size8_gto48 coverage100_dynamic_tsp_nopc_size8_gto48 dynamic_nopc_profile_gto48 osp_profile_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







