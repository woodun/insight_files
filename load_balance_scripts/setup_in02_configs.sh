#!/bin/sh

#specify your config path in stor2
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in02, use this sh on machine in02
for stor2_config in h0_t2_swl1 h0_t2_swl2 h0_t2_swl4 h0_t2_swl8 h0_t2_swl16 h0_t2_lrr h0_t2_gto h0_t2_tl201 h0_t2_tl401 h0_t2_tl801 h0_t3_swl1 h0_t3_swl2 h0_t3_swl4 h0_t3_swl8 h0_t3_swl16 h0_t3_lrr h0_t3_gto h0_t3_tl201 h0_t3_tl401 h0_t3_tl801
do
cd $configs_stor2
cd $stor2_config
sh setup_ALL.sh $stor2_config
done
