#!/bin/sh

#specify your config result path in stor2 only
configs_results_stor2=/stor2/hwang07/stor2_results

#modify the configs you want to launch on machine in02
for stor2_config in 2k_swl1 2k_swl2 2k_swl4 2k_swl8 2k_swl16 2k_lrr 2k_gto 2k_twolevel301 2k_twolevel601 2k_twolevel1201
do
cd $configs_results_stor2
mkdir $stor2_config
done