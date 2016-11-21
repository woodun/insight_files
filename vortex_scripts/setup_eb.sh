#!/bin/sh

#specify your config path
configs_stor=/sciclone/data20/hwang07/eb/

#modify the configs you want to launch on machine in01
for stor_config in swl1_25BW25L2 swl1_50BW50L2 swl1_125BW125L2 swl2_25BW25L2 swl2_50BW50L2 swl2_125BW125L2 swl4_25BW25L2 swl4_50BW50L2 swl4_125BW125L2 swl8_25BW25L2 swl8_50BW50L2 swl8_125BW125L2 swl16_25BW25L2 swl16_50BW50L2 swl16_125BW125L2 swl1_25BW25L2 swl1_50BW50L2 swl1_125BW125L2
do
cd $configs_stor
cd $stor_config
sh setup_ALL.sh $stor_config
done
