#!/bin/sh

#specify your config path in stor2 only
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in02
for stor2_config in h0_t3_lrr h0_t3_gto h0_t3_tl201 h0_t3_tl401 h0_t3_tl801
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
qsub pbs_$1.pbs
done
