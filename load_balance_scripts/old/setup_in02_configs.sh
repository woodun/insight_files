#!/bin/sh

#specify your config path in stor2
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in02, use this sh on machine in02
for stor2_config in pc5_w0_t3_m0_e0_lrrswl1 pc5_w0_t3_m0_e0_lrrswl2 pc5_w0_t3_m0_e0_lrrswl4 pc5_w0_t3_m0_e0_lrrswl8 pc5_w0_t3_m0_e0_lrrswl16 pc5_w0_t3_m0_e0_swl1 pc5_w0_t3_m0_e0_swl2 pc5_w0_t3_m0_e0_swl4 pc5_w0_t3_m0_e0_swl8 pc5_w0_t3_m0_e0_swl16 pc5_w0_t3_m0_e0_lrr pc5_w0_t3_m0_e0_gto pc5_w0_t3_m0_e0_tl101 pc5_w0_t3_m0_e0_tl201 pc5_w0_t3_m0_e0_tl401 pc5_w0_t3_m0_e0_tl801 pc5_w0_t3_m0_e0_tl1601
do
cd $configs_stor2
cd $stor2_config
sh setup_ALL.sh $stor2_config
done
