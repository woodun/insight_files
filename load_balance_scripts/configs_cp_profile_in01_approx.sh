#!/bin/sh

#specify your config path in stor1
configs_results_stor1=/stor1/hwang07/profile/

#use this template folder or copy it to your favored location
template_folder=/stor1/hwang07/insight_files/insight_template

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 exp_profile_lrrswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_results_stor1
cp -r $template_folder $stor1_config
done