#!/bin/sh
#this one use applications_FEB

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor1/hwang07/modified_osp

#coverage100_dynamic_osp_nopc_size8_gto48 coverage10_dynamic_osp_nopc_size8_gto48 
for configs_stor1 in wp0_osp_coverage10_gto48 wp6_osp_coverage10_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







