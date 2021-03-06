#!/bin/sh

#specify your config path in stor1
configs_results_stor1=/stor1/hwang07/profile/

#use this template folder or copy it to your favored location
template_folder=/stor1/hwang07/insight_files/insight_template

#modify the configs you want to launch on machine in01
for stor1_config in motivation_lrrswl1 motivation_lrrswl2 motivation_lrrswl4 motivation_lrrswl8 motivation_lrrswl16 motivation_lrrswl32 motivation_lrrswl48 motivation_RRswl1 motivation_RRswl2 motivation_RRswl4 motivation_RRswl8 motivation_RRswl16 motivation_RRswl32 motivation_RRswl48 motivation_gtoswl1 motivation_gtoswl2 motivation_gtoswl4 motivation_gtoswl8 motivation_gtoswl16 motivation_gtoswl32 motivation_gtoswl48 motivation_STL1 motivation_STL2 motivation_STL4 motivation_STL8 motivation_STL16 motivation_STL32 motivation_STL48 motivation_TL1 motivation_TL2 motivation_TL4 motivation_TL8 motivation_TL16 motivation_TL32 motivation_TL48
do
cd $configs_results_stor1
cp -r $template_folder $stor1_config
done