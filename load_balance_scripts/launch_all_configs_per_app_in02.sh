#!/bin/sh

#specify your config path in stor2 only
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in02
for stor2_config in 2k_swl1 2k_swl2 2k_swl4 2k_swl8 2k_swl16 2k_lrr 2k_gto 2k_twolevel301 2k_twolevel601 2k_twolevel1201
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
qsub pbs_$1.pbs
done
