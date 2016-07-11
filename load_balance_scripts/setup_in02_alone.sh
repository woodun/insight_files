#!/bin/sh

#specify your config path in stor2
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in02, use this sh on machine in02
for stor2_config in 2k_lrr 2k_gto 2k_twolevel301 2k_twolevel601 2k_twolevel1201 2k_swl1 2k_swl2 2k_swl4 2k_swl8 2k_swl16
do
cd $configs_stor2
cd $stor2_config
sh setup_ALL.sh $stor2_config
done
