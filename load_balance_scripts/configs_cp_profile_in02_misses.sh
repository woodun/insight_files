#!/bin/sh

#specify your config path in stor2
configs_results_stor2=/stor2/hwang07/profile/

#use this template folder or copy it to your favored location
template_folder=/stor1/hwang07/insight_files/insight_template_4hour

#modify the configs you want to launch on machine in01
for stor1_config in profile_misses_lrrswl1 profile_misses_lrrswl2 profile_misses_lrrswl4 profile_misses_lrrswl8 profile_misses_lrrswl16 profile_misses_lrrswl32 profile_misses_lrrswl48 profile_misses_RRswl1 profile_misses_RRswl2 profile_misses_RRswl4 profile_misses_RRswl8 profile_misses_RRswl16 profile_misses_RRswl32 profile_misses_RRswl48 profile_misses_GTOswl1 profile_misses_GTOswl2 profile_misses_GTOswl4 profile_misses_GTOswl8 profile_misses_GTOswl16 profile_misses_GTOswl32 profile_misses_GTOswl48
do
cd $configs_results_stor2
cp -r $template_folder $stor1_config
done