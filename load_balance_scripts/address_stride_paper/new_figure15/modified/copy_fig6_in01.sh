#!/bin/sh
#this one use applications_modified

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor1/hwang07/modified_fig6

for configs_stor1 in dynamic_nopc_profile_gto48 osp_profile_gto48 dynamic_nolong_nopc_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







