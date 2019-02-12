#!/bin/sh
#cp -r $template mapping_GTX480_6_2
#sh setup_ALL.sh mapping_GTX480_6_2

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/pscr/hwang07/mapping_exp

for configs_stor1 in mapping3_GTX480_8_1_bk32 mapping3_GTX480_8_1_infbw mapping3_GTX480_8_1_nodelay mapping3_GTX480_16_1
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done











