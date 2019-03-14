#!/bin/sh
#cp -r $template mapping_GTX480_6_2
#sh setup_ALL.sh mapping_GTX480_6_2

#note: nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z?_overall is in fact nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y32_z?_overall

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/pscr/hwang07/mapping_exp

for configs_stor1 in mapping0_GTX480_sm32_cn8_sub1_bw1_bk32 mapping1_GTX480_sm32_cn8_sub1_bw1_bk32 mapping2_GTX480_sm32_cn8_sub1_bw1_bk32 mapping4_GTX480_sm32_cn8_sub1_bw1_bk32 mapping5_GTX480_sm32_cn8_sub1_bw1_bk32 mapping6_GTX480_sm32_cn8_sub1_bw1_bk32 mapping7_GTX480_sm32_cn8_sub1_bw1_bk32 mapping8_GTX480_sm32_cn8_sub1_bw1_bk32 mapping9_GTX480_sm32_cn8_sub1_bw1_bk32 mapping10_GTX480_sm32_cn8_sub1_bw1_bk32 mapping11_GTX480_sm32_cn8_sub1_bw1_bk32 mapping12_GTX480_sm32_cn8_sub1_bw1_bk32 mapping13_GTX480_sm32_cn8_sub1_bw1_bk32 mapping14_GTX480_sm32_cn8_sub1_bw1_bk32 mapping15_GTX480_sm32_cn8_sub1_bw1_bk32
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done











