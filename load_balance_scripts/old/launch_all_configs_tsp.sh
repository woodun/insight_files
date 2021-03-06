#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/tsp/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/tsp/

#modify the configs you want to launch on machine in01
for stor1_config in tsp_address_gtoswl1 tsp_address_gtoswl4 tsp_address_gtoswl8 tsp_address_gtoswl16 tsp_address_gtoswl48 tsp_address_lrrswl1 tsp_address_lrrswl4 tsp_address_lrrswl8 tsp_address_lrrswl16 tsp_address_lrrswl48 tsp_address_RR1 tsp_address_RR4 tsp_address_RR8 tsp_address_RR16 tsp_address_RR48 nocache_tsp_address_gtoswl1 nocache_tsp_address_gtoswl4 nocache_tsp_address_gtoswl8 nocache_tsp_address_gtoswl16 nocache_tsp_address_gtoswl48 nocache_tsp_address_lrrswl1 nocache_tsp_address_lrrswl4 nocache_tsp_address_lrrswl8 nocache_tsp_address_lrrswl16 nocache_tsp_address_lrrswl48 nocache_tsp_address_RR1 nocache_tsp_address_RR4 nocache_tsp_address_RR8 nocache_tsp_address_RR16 nocache_tsp_address_RR48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
qsub pbs_$1.pbs
done

#modify the configs you want to launch on machine in02
for stor2_config in tsp_address_exp_gtoswl1 tsp_address_exp_gtoswl4 tsp_address_exp_gtoswl8 tsp_address_exp_gtoswl16 tsp_address_exp_gtoswl48 tsp_address_exp_lrrswl1 tsp_address_exp_lrrswl4 tsp_address_exp_lrrswl8 tsp_address_exp_lrrswl16 tsp_address_exp_lrrswl48 tsp_address_exp_RR1 tsp_address_exp_RR4 tsp_address_exp_RR8 tsp_address_exp_RR16 tsp_address_exp_RR48 nocache_tsp_address_exp_gtoswl1 nocache_tsp_address_exp_gtoswl4 nocache_tsp_address_exp_gtoswl8 nocache_tsp_address_exp_gtoswl16 nocache_tsp_address_exp_gtoswl48 nocache_tsp_address_exp_lrrswl1 nocache_tsp_address_exp_lrrswl4 nocache_tsp_address_exp_lrrswl8 nocache_tsp_address_exp_lrrswl16 nocache_tsp_address_exp_lrrswl48 nocache_tsp_address_exp_RR1 nocache_tsp_address_exp_RR4 nocache_tsp_address_exp_RR8 nocache_tsp_address_exp_RR16 nocache_tsp_address_exp_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
qsub pbs_$1.pbs
done

#tsp_address_gtoswl1 tsp_address_gtoswl4 tsp_address_gtoswl8 tsp_address_gtoswl16 tsp_address_gtoswl48 tsp_address_lrrswl1 tsp_address_lrrswl4 tsp_address_lrrswl8 tsp_address_lrrswl16 tsp_address_lrrswl48 tsp_address_RR1 tsp_address_RR4 tsp_address_RR8 tsp_address_RR16 tsp_address_RR48

#tsp_address_exp_gtoswl1 tsp_address_exp_gtoswl4 tsp_address_exp_gtoswl8 tsp_address_exp_gtoswl16 tsp_address_exp_gtoswl48 tsp_address_exp_lrrswl1 tsp_address_exp_lrrswl4 tsp_address_exp_lrrswl8 tsp_address_exp_lrrswl16 tsp_address_exp_lrrswl48 tsp_address_exp_RR1 tsp_address_exp_RR4 tsp_address_exp_RR8 tsp_address_exp_RR16 tsp_address_exp_RR48

#nocache_tsp_address_gtoswl1 nocache_tsp_address_gtoswl4 nocache_tsp_address_gtoswl8 nocache_tsp_address_gtoswl16 nocache_tsp_address_gtoswl48 nocache_tsp_address_lrrswl1 nocache_tsp_address_lrrswl4 nocache_tsp_address_lrrswl8 nocache_tsp_address_lrrswl16 nocache_tsp_address_lrrswl48 nocache_tsp_address_RR1 nocache_tsp_address_RR4 nocache_tsp_address_RR8 nocache_tsp_address_RR16 nocache_tsp_address_RR48

#nocache_tsp_address_exp_gtoswl1 nocache_tsp_address_exp_gtoswl4 nocache_tsp_address_exp_gtoswl8 nocache_tsp_address_exp_gtoswl16 nocache_tsp_address_exp_gtoswl48 nocache_tsp_address_exp_lrrswl1 nocache_tsp_address_exp_lrrswl4 nocache_tsp_address_exp_lrrswl8 nocache_tsp_address_exp_lrrswl16 nocache_tsp_address_exp_lrrswl48 nocache_tsp_address_exp_RR1 nocache_tsp_address_exp_RR4 nocache_tsp_address_exp_RR8 nocache_tsp_address_exp_RR16 nocache_tsp_address_exp_RR48