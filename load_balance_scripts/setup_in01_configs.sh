#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/stor1_configs

#modify the configs you want to launch on machine in01, use this sh on machine in01
for stor1_config in 2k_swl1 2k_swl2 2k_swl4 2k_swl8 2k_swl16 4k_swl1 4k_swl2 4k_swl4 4k_swl8 4k_swl16
do
cd $configs_stor1
cd $stor1_config
sh setup_ALL.sh $stor1_config
done