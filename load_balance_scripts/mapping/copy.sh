#!/bin/sh
#cp -r $template mapping0_GTX480
#sh setup_ALL.sh mapping0_GTX480

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/pscr/hwang07/mapping_exp

for configs_stor1 in mapping0_GTX480 mapping1_GTX480 mapping2_GTX480 mapping3_GTX480
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done











