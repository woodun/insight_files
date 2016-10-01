#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/profile/

#modify the configs you want to launch on machine in01
for stor1_config in profile_config
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
qsub pbs_$1.pbs
done