#!/bin/sh

#specify your config path
configs_stor=/sciclone/data20/hwang07/eb/

#use this template folder or copy it to your favored location
template_folder=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/vortex_template

#modify the configs you want to launch on machine in01
for stor_config in swl1_25BW25L2 swl1_50BW50L2 swl1_125BW125L2 swl2_25BW25L2 swl2_50BW50L2 swl2_125BW125L2 swl4_25BW25L2 swl4_50BW50L2 swl4_125BW125L2 swl8_25BW25L2 swl8_50BW50L2 swl8_125BW125L2 swl16_25BW25L2 swl16_50BW50L2 swl16_125BW125L2 swl1_25BW25L2 swl1_50BW50L2 swl1_125BW125L2
do
cd $configs_stor
cp -r $template_folder $stor_config
done