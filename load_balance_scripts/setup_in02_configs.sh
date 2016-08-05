#!/bin/sh

#specify your config path in stor2
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in02, use this sh on machine in02
for stor2_config in h0_t3_lrr pc10_w6_t3_swl1 pc10_w6_t3_swl2 pc10_w6_t3_swl4 pc10_w6_t3_swl8 pc10_w6_t3_swl16 pc10_w6_t3_lrr pc10_w6_t3_gto pc10_w6_t3_tl201 pc10_w6_t3_tl401 pc10_w6_t3_tl801 pc10_w5_t3_swl1 pc10_w5_t3_swl2 pc10_w5_t3_swl4 pc10_w5_t3_swl8 pc10_w5_t3_swl16 pc10_w5_t3_lrr pc10_w5_t3_gto pc10_w5_t3_tl201 pc10_w5_t3_tl401 pc10_w5_t3_tl801 pc10_w4_t3_swl1 pc10_w4_t3_swl2 pc10_w4_t3_swl4 pc10_w4_t3_swl8 pc10_w4_t3_swl16 pc10_w4_t3_lrr pc10_w4_t3_gto pc10_w4_t3_tl201 pc10_w4_t3_tl401 pc10_w4_t3_tl801 pc10_w3_t3_swl1 pc10_w3_t3_swl2 pc10_w3_t3_swl4 pc10_w3_t3_swl8 pc10_w3_t3_swl16
do
cd $configs_stor2
cd $stor2_config
sh setup_ALL.sh $stor2_config
done
