#!/bin/sh

#specify your config result path in stor1 and stor2
configs_results_stor1=/stor1/hwang07/stor1_results/
configs_results_stor2=/stor2/hwang07/stor2_results/

for stor1_config in swl1 swl2 swl4 swl8 swl16
do
cd $configs_results_stor1
mkdir $stor1_config
done

for stor2_config in lrr gto twolevel301 twolevel601 twolevel1201
do
cd $configs_results_stor2
mkdir $stor2_config
done