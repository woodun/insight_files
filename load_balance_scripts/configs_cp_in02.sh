#!/bin/sh

#specify your config path in stor2 only
configs_results_stor2=/stor2/hwang07/stor2_configs

#use this template folder or copy it to your favored location
template_folder=/stor1/hwang07/insight_files/insight_template

#modify the configs you want to cp on machine in02
for stor2_config in pc10_w0_t3_m0_e0_lrrswl1 pc10_w0_t3_m0_e0_lrrswl2 pc10_w0_t3_m0_e0_lrrswl4 pc10_w0_t3_m0_e0_lrrswl8 pc10_w0_t3_m0_e0_lrrswl16 pc10_w0_t3_m0_e0_swl1 pc10_w0_t3_m0_e0_swl2 pc10_w0_t3_m0_e0_swl4 pc10_w0_t3_m0_e0_swl8 pc10_w0_t3_m0_e0_swl16 pc10_w0_t3_m0_e0_lrr pc10_w0_t3_m0_e0_gto pc10_w0_t3_m0_e0_tl101 pc10_w0_t3_m0_e0_tl201 pc10_w0_t3_m0_e0_tl401 pc10_w0_t3_m0_e0_tl801 pc10_w0_t3_m0_e0_tl1601
do
cd $configs_results_stor2
cp -r $template_folder $stor2_config
done