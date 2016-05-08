#!/bin/sh

#specify your config path in stor1 and stor2
configs_results_stor1=/stor1/hwang07/stor1_configs/
configs_results_stor2=/stor2/hwang07/stor2_configs/

#use this template folder or copy it to your favored location
template_folder=/stor1/hwang07/insight_files/insight_template

#modify the configs you want to launch on machine in01
for stor1_config in swl1 swl2 swl4 swl8 swl16
do
cd $configs_results_stor1
cp -r $template_folder $stor1_config
done

#modify the configs you want to launch on machine in02
for stor2_config in lrr gto twolevel301 twolevel601 twolevel1201
do
cd $configs_results_stor2
cp -r $template_folder $stor2_config
done