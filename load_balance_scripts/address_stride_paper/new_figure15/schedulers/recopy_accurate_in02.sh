#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor2/hwang07/accurate_coverage_tsp

for configs_stor1 in wp4_tsp_coverage125_gto48 wp4_tsp_coverage20_gto48 wp4_tsp_coverage25_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









