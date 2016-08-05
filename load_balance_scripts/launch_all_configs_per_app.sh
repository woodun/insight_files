#!/bin/sh

#specify your config path in stor1 and stor2
configs_stor1=/stor1/hwang07/stor1_configs
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in01
for stor1_config in pc10_w3_t3_lrr pc10_w3_t3_gto pc10_w3_t3_tl201 pc10_w3_t3_tl401 pc10_w3_t3_tl801 pc10_w2_t3_swl1 pc10_w2_t3_swl2 pc10_w2_t3_swl4 pc10_w2_t3_swl8 pc10_w2_t3_swl16 pc10_w2_t3_lrr pc10_w2_t3_gto pc10_w2_t3_tl201 pc10_w2_t3_tl401 pc10_w2_t3_tl801 pc10_w1_t3_swl1 pc10_w1_t3_swl2 pc10_w1_t3_swl4 pc10_w1_t3_swl8 pc10_w1_t3_swl16 pc10_w1_t3_lrr pc10_w1_t3_gto pc10_w1_t3_tl201 pc10_w1_t3_tl401 pc10_w1_t3_tl801 pc10_w0_t3_swl1 pc10_w0_t3_swl2 pc10_w0_t3_swl4 pc10_w0_t3_swl8 pc10_w0_t3_swl16 pc10_w0_t3_lrr pc10_w0_t3_gto pc10_w0_t3_tl201 pc10_w0_t3_tl401 pc10_w0_t3_tl801
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
qsub pbs_$1.pbs
done

#modify the configs you want to launch on machine in02
for stor2_config in pc10_w6_t3_swl1 pc10_w6_t3_swl2 pc10_w6_t3_swl4 pc10_w6_t3_swl8 pc10_w6_t3_swl16 pc10_w6_t3_lrr pc10_w6_t3_gto pc10_w6_t3_tl201 pc10_w6_t3_tl401 pc10_w6_t3_tl801 pc10_w5_t3_swl1 pc10_w5_t3_swl2 pc10_w5_t3_swl4 pc10_w5_t3_swl8 pc10_w5_t3_swl16 pc10_w5_t3_lrr pc10_w5_t3_gto pc10_w5_t3_tl201 pc10_w5_t3_tl401 pc10_w5_t3_tl801 pc10_w4_t3_swl1 pc10_w4_t3_swl2 pc10_w4_t3_swl4 pc10_w4_t3_swl8 pc10_w4_t3_swl16 pc10_w4_t3_lrr pc10_w4_t3_gto pc10_w4_t3_tl201 pc10_w4_t3_tl401 pc10_w4_t3_tl801 pc10_w3_t3_swl1 pc10_w3_t3_swl2 pc10_w3_t3_swl4 pc10_w3_t3_swl8 pc10_w3_t3_swl16
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
qsub pbs_$1.pbs
done
