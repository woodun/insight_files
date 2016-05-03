#!/bin/sh

#specify your config path in stor1 and stor2
configs_stor1=/stor1/hwang07/stor1_configs
configs_stor2=/stor2/hwang07/stor2_configs

for stor1_config in swl1 swl2 swl4 swl8 swl16
do
cd $configs_stor1
cd $stor1_config
sh setup_ALL.sh $stor1_config 1
done

for stor2_config in lrr gto twolevel301 twolevel601 twolevel1201
do
cd $configs_stor2
cd $stor2_config
sh setup_ALL.sh $stor2_config 2
done
