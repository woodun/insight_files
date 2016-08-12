#!/bin/sh

#specify your config path in stor2 only
configs_results_stor1=/stor1/hwang07/stor1_configs

#use this template folder or copy it to your favored location
template_folder=/stor1/hwang07/insight_files/insight_template

#modify the configs you want to launch on machine in01
for stor1_config in pc5_w0_t3_m0_lrrswl1 pc5_w0_t3_lrrswl1 pc5_w0_t3_m0_lrrswl2 pc5_w0_t3_lrrswl2 pc5_w0_t3_m0_lrrswl4 pc5_w0_t3_lrrswl4 pc5_w0_t3_m0_lrrswl8 pc5_w0_t3_lrrswl8 pc5_w0_t3_m0_lrrswl16 pc5_w0_t3_lrrswl16 pc5_w0_t3_m0_swl1 pc5_w0_t3_swl1 pc5_w0_t3_m0_swl2 pc5_w0_t3_swl2 pc5_w0_t3_m0_swl4 pc5_w0_t3_swl4 pc5_w0_t3_m0_swl8 pc5_w0_t3_swl8 pc5_w0_t3_m0_swl16 pc5_w0_t3_swl16 pc5_w0_t3_m0_lrr pc5_w0_t3_lrr pc5_w0_t3_m0_gto pc5_w0_t3_gto pc5_w0_t3_m0_tl101 pc5_w0_t3_tl101 pc5_w0_t3_m0_tl201 pc5_w0_t3_tl201 pc5_w0_t3_m0_tl401 pc5_w0_t3_tl401 pc5_w0_t3_m0_tl801 pc5_w0_t3_tl801 pc5_w0_t3_m0_tl1601 pc5_w0_t3_tl1601
do
cd $configs_results_stor1
cp -r $template_folder $stor1_config
done