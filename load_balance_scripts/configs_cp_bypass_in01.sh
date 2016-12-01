#!/bin/sh

#specify your config path in stor1
configs_results_stor1=/stor1/hwang07/bypass/

#use this template folder or copy it to your favored location
template_folder=/stor1/hwang07/insight_files/insight_template

#modify the configs you want to launch on machine in01
for stor1_config in bypass_0coverage_gtoswl1 bypass_0coverage_gtoswl4 bypass_0coverage_gtoswl8 bypass_0coverage_gtoswl16 bypass_0coverage_gtoswl48 bypass_0coverage_lrrswl1 bypass_0coverage_lrrswl4 bypass_0coverage_lrrswl8 bypass_0coverage_lrrswl16 bypass_0coverage_lrrswl48 bypass_0coverage_RR1 bypass_0coverage_RR4 bypass_0coverage_RR8 bypass_0coverage_RR16 bypass_0coverage_RR48 bypass_125coverage_gtoswl1 bypass_125coverage_gtoswl4 bypass_125coverage_gtoswl8 bypass_125coverage_gtoswl16 bypass_125coverage_gtoswl48 bypass_125coverage_lrrswl1 bypass_125coverage_lrrswl4 bypass_125coverage_lrrswl8 bypass_125coverage_lrrswl16 bypass_125coverage_lrrswl48 bypass_125coverage_RR1 bypass_125coverage_RR4 bypass_125coverage_RR8 bypass_125coverage_RR16 bypass_125coverage_RR48 bypass_25coverage_gtoswl1 bypass_25coverage_gtoswl4 bypass_25coverage_gtoswl8 bypass_25coverage_gtoswl16 bypass_25coverage_gtoswl48 bypass_25coverage_lrrswl1 bypass_25coverage_lrrswl4 bypass_25coverage_lrrswl8 bypass_25coverage_lrrswl16 bypass_25coverage_lrrswl48 bypass_25coverage_RR1 bypass_25coverage_RR4 bypass_25coverage_RR8 bypass_25coverage_RR16 bypass_25coverage_RR48
do
cd $configs_results_stor1
cp -r $template_folder $stor1_config
done