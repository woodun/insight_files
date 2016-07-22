#!/bin/sh

#specify your config path in stor1 only
configs_stor1=/stor1/hwang07/stor1_configs

#modify the configs you want to launch on machine in01
for stor1_config in h0_t0_swl1 h0_t0_swl2 h0_t0_swl4 h0_t0_swl8 h0_t0_swl16 h0_t0_lrr h0_t0_gto h0_t0_tl201 h0_t0_tl401 h0_t0_tl801 h0_t1_swl1 h0_t1_swl2 h0_t1_swl4 h0_t1_swl8 h0_t1_swl16 h0_t1_lrr h0_t1_gto h0_t1_tl201 h0_t1_tl401 h0_t1_tl801
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
qsub pbs_$1.pbs
done
