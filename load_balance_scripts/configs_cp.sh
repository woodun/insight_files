#!/bin/sh

#specify your config path in stor1 and stor2
configs_results_stor1=/stor1/hwang07/stor1_configs
configs_results_stor2=/stor2/hwang07/stor2_configs

#use this template folder or copy it to your favored location
template_folder=/stor1/hwang07/insight_files/insight_template

#modify the configs you want to launch on machine in01
for stor1_config in 2k_swl1 2k_swl2 2k_swl4 2k_swl8 2k_swl16 4k_swl1 4k_swl2 4k_swl4 4k_swl8 4k_swl16
do
cd $configs_results_stor1
cp -r $template_folder $stor1_config
done

#modify the configs you want to launch on machine in02
for stor2_config in 2k_lrr 2k_gto 2k_twolevel301 2k_twolevel601 2k_twolevel1201 4k_lrr 4k_gto 4k_twolevel301 4k_twolevel601 4k_twolevel1201
do
cd $configs_results_stor2
cp -r $template_folder $stor2_config
done