#!/bin/sh

#specify your config path in stor2 only
configs_results_stor1=/stor1/hwang07/stor1_configs

#use this template folder or copy it to your favored location
template_folder=/stor1/hwang07/insight_files/insight_template

#modify the configs you want to launch on machine in01
for stor1_config in h0_t3_swl1 h0_t3_swl2 h0_t3_swl4 h0_t3_swl8 h0_t3_swl16
do
cd $configs_results_stor1
cp -r $template_folder $stor1_config
done