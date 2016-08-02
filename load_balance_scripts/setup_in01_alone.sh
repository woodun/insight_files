#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/stor1_configs

#modify the configs you want to launch on machine in01, use this sh on machine in01
for stor1_config in h0_t3_swl1 h0_t3_swl2 h0_t3_swl4 h0_t3_swl8 h0_t3_swl16 h0_t3_lrr h0_t3_gto h0_t3_tl201 h0_t3_tl401 h0_t3_tl801
do
cd $configs_stor1
cd $stor1_config
sh setup_ALL.sh $stor1_config
done
