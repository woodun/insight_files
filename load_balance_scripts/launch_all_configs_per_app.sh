#!/bin/sh

#specify your config path in stor1 and stor2
configs_stor1=/stor1/hwang07/stor1_configs
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in01
for stor1_config in pc5_w0_t3_m0_lrrswl1 pc5_w0_t3_lrrswl1 pc5_w0_t3_m0_lrrswl2 pc5_w0_t3_lrrswl2 pc5_w0_t3_m0_lrrswl4 pc5_w0_t3_lrrswl4 pc5_w0_t3_m0_lrrswl8 pc5_w0_t3_lrrswl8 pc5_w0_t3_m0_lrrswl16 pc5_w0_t3_lrrswl16 pc5_w0_t3_m0_swl1 pc5_w0_t3_swl1 pc5_w0_t3_m0_swl2 pc5_w0_t3_swl2 pc5_w0_t3_m0_swl4 pc5_w0_t3_swl4 pc5_w0_t3_m0_swl8
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
qsub pbs_$1.pbs
done

#modify the configs you want to launch on machine in02
for stor2_config in pc5_w0_t3_swl8 pc5_w0_t3_m0_swl16 pc5_w0_t3_swl16 pc5_w0_t3_m0_lrr pc5_w0_t3_lrr pc5_w0_t3_m0_gto pc5_w0_t3_gto pc5_w0_t3_m0_tl101 pc5_w0_t3_tl101 pc5_w0_t3_m0_tl201 pc5_w0_t3_tl201 pc5_w0_t3_m0_tl401 pc5_w0_t3_tl401 pc5_w0_t3_m0_tl801 pc5_w0_t3_tl801 pc5_w0_t3_m0_tl1601 pc5_w0_t3_tl1601
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
qsub pbs_$1.pbs
done
