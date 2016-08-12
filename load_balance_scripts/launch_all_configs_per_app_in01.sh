#!/bin/sh

#specify your config path in stor1 only
configs_stor1=/stor1/hwang07/stor1_configs

#modify the configs you want to launch on machine in01
for stor1_config in pc0_w6_t3_lrrswl2 pc0_w6_t3_lrrswl4 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
qsub pbs_$1.pbs
done
