#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor1/hwang07/accurate_coverage_osp

for configs_stor1 in wp4_osp_coverage125_gto48 wp4_osp_coverage20_gto48 wp4_osp_coverage25_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









