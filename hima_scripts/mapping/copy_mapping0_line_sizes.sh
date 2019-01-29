#!/bin/sh
#cp -r $template mapping0_GTX480_line_size128_test
#sh setup_ALL.sh mapping0_GTX480_line_size128_test

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/pscr/hwang07/mapping_exp

for configs_stor1 in mapping0_GTX480_line_size128 mapping0_GTX480_line_size64 mapping0_GTX480_line_size32
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done











