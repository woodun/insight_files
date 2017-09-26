#!/bin/sh
#this one use applications_modified

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor1/hwang07/rebuttal_baseline

for configs_stor1 in tsp_address_exp_gtoswl48_alloff_wattch1
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







