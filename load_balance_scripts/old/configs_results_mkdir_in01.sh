#!/bin/sh

#specify your config result path in stor1 only
configs_results_stor1=/stor1/hwang07/stor1_results

#modify the configs you want to collect result on machine in01
for stor1_config in pc5_w0_t3_lrrswl1 pc5_w0_t3_lrrswl2 pc5_w0_t3_lrrswl4 pc5_w0_t3_lrrswl8 pc5_w0_t3_lrrswl16 pc5_w0_t3_swl1 pc5_w0_t3_swl2 pc5_w0_t3_swl4 pc5_w0_t3_swl8 pc5_w0_t3_swl16 pc5_w0_t3_lrr pc5_w0_t3_gto pc5_w0_t3_tl101 pc5_w0_t3_tl201 pc5_w0_t3_tl401 pc5_w0_t3_tl801 pc5_w0_t3_tl1601
do
cd $configs_results_stor1
mkdir $stor1_config
done