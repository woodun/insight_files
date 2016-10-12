#!/bin/sh

#specify your config path in stor1 and stor2
configs_results_stor1=/stor1/hwang07/profile/
configs_results_stor2=/stor1/hwang07/profile/

#use this template folder or copy it to your favored location
template_folder=/stor1/hwang07/insight_files/insight_template_30min

#modify the configs you want to launch on machine in01
for stor1_config in profile_lrrswl4 profile_lrrswl8 profile_lrrswl16 profile_RRswl4 profile_RRswl8 profile_RRswl16 profile_GTOswl4 profile_GTOswl8 profile_GTOswl16
do
cd $configs_results_stor1
cp -r $template_folder $stor1_config
done