#!/bin/sh
#cp -r $template mapping_GTX480_6_2
#sh setup_ALL.sh mapping_GTX480_6_2

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/pscr/hwang07/mapping_exp

for configs_stor1 in mapping3_GTX480_sm32_cn8_sub1_bw1_bk32 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_nodelay mapping3_GTX480_sm32_cn8_sub1_bw1_bk64 mapping3_GTX480_sm32_cn8_sub1_bw32_bk32 mapping3_GTX480_sm32_cn16_sub1_bw1_bk32 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z4 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z8 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z16 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z32
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done











