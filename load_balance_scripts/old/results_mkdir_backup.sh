#!/bin/sh

#specify your config result path in stor1 and stor2
configs_results_stor1=/stor1/hwang07/stor1_results
configs_results_stor2=/stor2/hwang07/stor2_results

#modify the configs you want to collect result on machine in01
for stor1_config in pc10_w3_t3_lrr pc10_w3_t3_gto pc10_w3_t3_tl201 pc10_w3_t3_tl401 pc10_w3_t3_tl801 pc10_w2_t3_swl1 pc10_w2_t3_swl2 pc10_w2_t3_swl4 pc10_w2_t3_swl8 pc10_w2_t3_swl16 pc10_w2_t3_lrr pc10_w2_t3_gto pc10_w2_t3_tl201 pc10_w2_t3_tl401 pc10_w2_t3_tl801 pc10_w1_t3_swl1 pc10_w1_t3_swl2 pc10_w1_t3_swl4 pc10_w1_t3_swl8 pc10_w1_t3_swl16 pc10_w1_t3_lrr pc10_w1_t3_gto pc10_w1_t3_tl201 pc10_w1_t3_tl401 pc10_w1_t3_tl801 pc10_w0_t3_swl1 pc10_w0_t3_swl2 pc10_w0_t3_swl4 pc10_w0_t3_swl8 pc10_w0_t3_swl16 pc10_w0_t3_lrr pc10_w0_t3_gto pc10_w0_t3_tl201 pc10_w0_t3_tl401 pc10_w0_t3_tl801
do
cd $configs_results_stor1
mkdir $stor1_config
done

#modify the configs you want to collect result on machine in02
for stor2_config in pc10_w6_t3_swl1 pc10_w6_t3_swl2 pc10_w6_t3_swl4 pc10_w6_t3_swl8 pc10_w6_t3_swl16 pc10_w6_t3_lrr pc10_w6_t3_gto pc10_w6_t3_tl201 pc10_w6_t3_tl401 pc10_w6_t3_tl801 pc10_w5_t3_swl1 pc10_w5_t3_swl2 pc10_w5_t3_swl4 pc10_w5_t3_swl8 pc10_w5_t3_swl16 pc10_w5_t3_lrr pc10_w5_t3_gto pc10_w5_t3_tl201 pc10_w5_t3_tl401 pc10_w5_t3_tl801 pc10_w4_t3_swl1 pc10_w4_t3_swl2 pc10_w4_t3_swl4 pc10_w4_t3_swl8 pc10_w4_t3_swl16 pc10_w4_t3_lrr pc10_w4_t3_gto pc10_w4_t3_tl201 pc10_w4_t3_tl401 pc10_w4_t3_tl801 pc10_w3_t3_swl1 pc10_w3_t3_swl2 pc10_w3_t3_swl4 pc10_w3_t3_swl8 pc10_w3_t3_swl16
do
cd $configs_results_stor2
mkdir $stor2_config
done