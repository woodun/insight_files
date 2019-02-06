#!/bin/sh
#cp -r $template mapping_GTX480_6_2
#sh setup_ALL.sh mapping_GTX480_6_2

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/pscr/hwang07/mapping_exp
#mappingx_GTX480_8_1 mapping4_GTX480_8_1 mapping5_GTX480_8_1 mappingx2_GTX480_8_1 mappingx3_GTX480_8_1
for configs_stor1 in mapping6_GTX480_8_1 mapping7_GTX480_8_1
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done











