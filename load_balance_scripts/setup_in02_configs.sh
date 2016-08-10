#!/bin/sh

#specify your config path in stor2
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in02, use this sh on machine in02
for stor2_config in pc10_w3_t3_lrrswl4 pc10_w3_t3_lrrswl8 pc10_w3_t3_lrrswl16 pc10_w4_t3_lrrswl1 pc10_w4_t3_lrrswl2 pc10_w4_t3_lrrswl4 pc10_w4_t3_lrrswl8 pc10_w4_t3_lrrswl16 pc10_w5_t3_lrrswl1 pc10_w5_t3_lrrswl2 pc10_w5_t3_lrrswl4 pc10_w5_t3_lrrswl8 pc10_w5_t3_lrrswl16 pc10_w6_t3_lrrswl1 pc10_w6_t3_lrrswl2 pc10_w6_t3_lrrswl4 pc10_w6_t3_lrrswl8 pc10_w6_t3_lrrswl16
do
cd $configs_stor2
cd $stor2_config
sh setup_ALL.sh $stor2_config
done
