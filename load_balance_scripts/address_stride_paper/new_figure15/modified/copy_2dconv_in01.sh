#!/bin/sh
#this one use applications_FEB

dest_emboss=/stor1/hwang07/emboss
dest_blur=/stor1/hwang07/blur

#####################################################################################
mother_dir1=/stor1/hwang07/modified_osp
mother_dir2=/stor2/hwang07/modified_tsp


for configs_stor1 in coverage5_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage5_gto48 wp6_osp_coverage5_gto48 coverage10_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage10_gto48 wp6_osp_coverage10_gto48 coverage15_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage15_gto48 wp6_osp_coverage15_gto48 coverage20_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage20_gto48 wp6_osp_coverage20_gto48
do

#######
cd $mother_dir1
cd $configs_stor1
cd polybench
cd 2DCONV_BLUR
cp BLUR_GPU.bmp dest_blur
mv blur_$configs_stor1 BLUR_GPU.bmp 
cd ..
#cd 2DCONV_EMBOSS
#cp EMBOSS_GPU.bmp dest_emboss
#mv EMBOSS.bmp emboss_$configs_stor

done


for configs_stor2 in coverage5_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage5_gto48 wp6_tsp_coverage5_gto48 coverage10_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp6_tsp_coverage10_gto48 coverage15_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage15_gto48 wp6_tsp_coverage15_gto48 coverage20_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage20_gto48 wp6_tsp_coverage20_gto48
do

#######
cd $mother_dir2
cd $configs_stor2
cd polybench
cd 2DCONV_BLUR
cp BLUR_GPU.bmp dest_blur
mv blur_$configs_stor1 BLUR_GPU.bmp 
cd ..
#cd 2DCONV_EMBOSS
#cp EMBOSS_GPU.bmp dest_emboss
#mv EMBOSS_GPU.bmp emboss_$configs_stor

done



