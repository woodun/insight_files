#!/bin/sh

#specify your config path in stor1 and stor2
configs_stor1=/stor1/hwang07/stor1_configs
configs_stor2=/stor2/hwang07/stor2_configs

#modify the configs you want to launch on machine in01
for stor1_config in pc5_w0_t3_pclrrswl1 pc5_w0_t3_pclrrswl2 pc5_w0_t3_pclrrswl4 pc5_w0_t3_pclrrswl8 pc5_w0_t3_pclrrswl16 pc5_w0_t3_pcswl1 pc5_w0_t3_pcswl2 pc5_w0_t3_pcswl4 pc5_w0_t3_pcswl8 pc5_w0_t3_pcswl16 pc5_w0_t3_pclrr pc5_w0_t3_pcgto pc5_w0_t3_pctl101 pc5_w0_t3_pctl201 pc5_w0_t3_pctl401 pc5_w0_t3_pctl801 pc5_w0_t3_pctl1601
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
qsub pbs_$1.pbs
done

#modify the configs you want to launch on machine in02
for stor2_config in pc5_w0_t3_m0_pclrrswl1 pc5_w0_t3_m0_pclrrswl2 pc5_w0_t3_m0_pclrrswl4 pc5_w0_t3_m0_pclrrswl8 pc5_w0_t3_m0_pclrrswl16 pc5_w0_t3_m0_pcswl1 pc5_w0_t3_m0_pcswl2 pc5_w0_t3_m0_pcswl4 pc5_w0_t3_m0_pcswl8 pc5_w0_t3_m0_pcswl16 pc5_w0_t3_m0_pclrr pc5_w0_t3_m0_pcgto pc5_w0_t3_m0_pctl101 pc5_w0_t3_m0_pctl201 pc5_w0_t3_m0_pctl401 pc5_w0_t3_m0_pctl801 pc5_w0_t3_m0_pctl1601
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
qsub pbs_$1.pbs
done
