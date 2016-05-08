#!/bin/sh

#specify your config path in stor2
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in02, use this sh on machine in02
for stor2_config in lrr gto twolevel301 twolevel601 twolevel1201
do
cd $configs_stor2
cd $stor2_config
sh setup_ALL.sh $stor2_config
done
