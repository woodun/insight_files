#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/stor1_configs

#modify the configs you want to launch on machine in01, use this sh on machine in01
for stor1_config in pc10_w0_t3_tl101 pc10_w0_t3_tl1601 pc10_w1_t3_tl101 pc10_w1_t3_tl1601 pc10_w2_t3_tl101 pc10_w2_t3_tl1601 pc10_w3_t3_tl101 
do
cd $configs_stor1
cd $stor1_config
sh setup_ALL.sh $stor1_config
done