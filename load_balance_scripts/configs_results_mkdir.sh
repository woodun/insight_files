#!/bin/sh

#specify your config result path in stor1 and stor2
configs_results_stor1=/stor1/hwang07/stor1_results
configs_results_stor2=/stor2/hwang07/stor2_results

#modify the configs you want to collect result on machine in01
for stor1_config in pc10_w0_t3_tl101 pc10_w0_t3_tl1601 pc10_w1_t3_tl101 pc10_w1_t3_tl1601 pc10_w2_t3_tl101 pc10_w2_t3_tl1601 pc10_w3_t3_tl101 
do
cd $configs_results_stor1
mkdir $stor1_config
done

#modify the configs you want to collect result on machine in02
for stor2_config in pc10_w3_t3_tl1601 pc10_w4_t3_tl101 pc10_w4_t3_tl1601 pc10_w5_t3_tl101 pc10_w5_t3_tl1601 pc10_w6_t3_tl101 pc10_w6_t3_tl1601
do
cd $configs_results_stor2
mkdir $stor2_config
done