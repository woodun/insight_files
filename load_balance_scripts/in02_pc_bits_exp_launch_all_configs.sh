#!/bin/sh

#specify your config path in stor2
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in02
for stor2_config in pc10_w6_t1_lrr pc9_w6_t1_lrr pc8_w6_t1_lrr pc7_w6_t1_lrr pc6_w6_t1_lrr pc5_w6_t1_lrr pc4_w6_t1_lrr pc3_w6_t1_lrr pc2_w6_t1_lrr pc1_w6_t1_lrr pc0_w6_t1_lrr pc10_w6_t1_tl801 pc9_w6_t1_tl801 pc8_w6_t1_tl801 pc7_w6_t1_tl801 pc6_w6_t1_tl801 pc5_w6_t1_tl801 pc4_w6_t1_tl801 pc3_w6_t1_tl801 pc2_w6_t1_tl801 pc1_w6_t1_tl801 pc0_w6_t1_tl801 pc10_w6_t3_lrr pc9_w6_t3_lrr pc8_w6_t3_lrr pc7_w6_t3_lrr pc6_w6_t3_lrr pc5_w6_t3_lrr pc4_w6_t3_lrr pc3_w6_t3_lrr pc2_w6_t3_lrr pc1_w6_t3_lrr pc0_w6_t3_lrr pc10_w6_t3_tl801 pc9_w6_t3_tl801 pc8_w6_t3_tl801 pc7_w6_t3_tl801 pc6_w6_t3_tl801 pc5_w6_t3_tl801 pc4_w6_t3_tl801 pc3_w6_t3_tl801 pc2_w6_t3_tl801 pc1_w6_t3_tl801 pc0_w6_t3_tl801
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
qsub pbs_$1.pbs
done
