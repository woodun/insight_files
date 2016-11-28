#!/bin/sh

#specify your config path in stor1
configs_results_stor1=/stor1/hwang07/noevict/

#use this template folder or copy it to your favored location
template_folder=/stor1/hwang07/insight_files/insight_template

#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_gtoswl4 approx_0coverage_noevict_gtoswl8 approx_0coverage_noevict_gtoswl16 approx_0coverage_noevict_gtoswl48 approx_0coverage_noevict_lrrswl1 approx_0coverage_noevict_lrrswl4 approx_0coverage_noevict_lrrswl8 approx_0coverage_noevict_lrrswl16 approx_0coverage_noevict_lrrswl48 approx_0coverage_noevict_RR1 approx_0coverage_noevict_RR4 approx_0coverage_noevict_RR8 approx_0coverage_noevict_RR16 approx_0coverage_noevict_RR48 approx_0coverage_noevict_STL1 approx_0coverage_noevict_STL4 approx_0coverage_noevict_STL8 approx_0coverage_noevict_STL16 approx_0coverage_noevict_STL48 approx_0coverage_noevict_tl1 approx_0coverage_noevict_tl4 approx_0coverage_noevict_tl8 approx_0coverage_noevict_tl16 approx_0coverage_noevict_tl48 approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_gtoswl4 approx_125coverage_noevict_gtoswl8 approx_125coverage_noevict_gtoswl16 approx_125coverage_noevict_gtoswl48 approx_125coverage_noevict_lrrswl1 approx_125coverage_noevict_lrrswl4 approx_125coverage_noevict_lrrswl8 approx_125coverage_noevict_lrrswl16 approx_125coverage_noevict_lrrswl48 approx_125coverage_noevict_RR1 approx_125coverage_noevict_RR4 approx_125coverage_noevict_RR8 approx_125coverage_noevict_RR16 approx_125coverage_noevict_RR48 approx_125coverage_noevict_STL1 approx_125coverage_noevict_STL4 approx_125coverage_noevict_STL8 approx_125coverage_noevict_STL16 approx_125coverage_noevict_STL48 approx_125coverage_noevict_tl1 approx_125coverage_noevict_tl4 approx_125coverage_noevict_tl8 approx_125coverage_noevict_tl16 approx_125coverage_noevict_tl48 approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_gtoswl4 approx_25coverage_noevict_gtoswl8 approx_25coverage_noevict_gtoswl16 approx_25coverage_noevict_gtoswl48 approx_25coverage_noevict_lrrswl1 approx_25coverage_noevict_lrrswl4 approx_25coverage_noevict_lrrswl8 approx_25coverage_noevict_lrrswl16 approx_25coverage_noevict_lrrswl48 approx_25coverage_noevict_RR1 approx_25coverage_noevict_RR4 approx_25coverage_noevict_RR8 approx_25coverage_noevict_RR16 approx_25coverage_noevict_RR48 approx_25coverage_noevict_STL1 approx_25coverage_noevict_STL4 approx_25coverage_noevict_STL8 approx_25coverage_noevict_STL16 approx_25coverage_noevict_STL48 approx_25coverage_noevict_tl1 approx_25coverage_noevict_tl4 approx_25coverage_noevict_tl8 approx_25coverage_noevict_tl16 approx_25coverage_noevict_tl48
do
cd $configs_results_stor1
cp -r $template_folder $stor1_config
done

#
#exp_profile_gtoswl48 exp_profile_lrrswl48 approximate_125coverage_noevict_gtoswl48 approximate_25coverage_noevict_gtoswl48 approximate_50coverage_noevict_gtoswl48 approximate_75coverage_noevict_gtoswl48 approximate_100coverage_noevict_gtoswl48 approximate_125coverage_noevict_lrrswl48 approximate_25coverage_noevict_lrrswl48 approximate_50coverage_noevict_lrrswl48 approximate_75coverage_noevict_lrrswl48 approximate_100coverage_noevict_lrrswl48
#