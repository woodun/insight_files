#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/stor1_configs

for stor1_config in swl1 swl2 swl4 swl8 swl16
do
cd $configs_stor1
cd $stor1_config
sh setup_ALL.sh $stor1_config
done