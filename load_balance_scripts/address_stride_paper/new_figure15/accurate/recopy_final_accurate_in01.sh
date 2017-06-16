#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template/add_figures.sh
template2=/stor1/hwang07/insight_files/insight_template/gen_pbs_CUDA_add_figures.sh
template3=/stor1/hwang07/insight_files/insight_template/gen_pbs_poly_add_figures.sh
template4=/stor1/hwang07/insight_files/insight_template/setup_CUDA_add_figures.sh
template5=/stor1/hwang07/insight_files/insight_template/setup_poly_add_figures.sh

#####################################################################################
mother_dir=/stor1/hwang07/final_accurate_osp

for configs_stor1 in coverage10_dynamic_osp_nopc_size8_gto48 coverage20_dynamic_osp_nopc_size8_gto48 coverage30_dynamic_osp_nopc_size8_gto48 coverage40_dynamic_osp_nopc_size8_gto48 coverage50_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage10_gto48 wp0_osp_coverage20_gto48 wp0_osp_coverage30_gto48 wp0_osp_coverage40_gto48 wp0_osp_coverage50_gto48 wp2_osp_coverage10_gto48 wp2_osp_coverage20_gto48 wp2_osp_coverage30_gto48 wp2_osp_coverage40_gto48 wp2_osp_coverage50_gto48 wp4_osp_coverage10_gto48 wp4_osp_coverage20_gto48 wp4_osp_coverage30_gto48 wp4_osp_coverage40_gto48 wp4_osp_coverage50_gto48 wp6_osp_coverage10_gto48 wp6_osp_coverage20_gto48 wp6_osp_coverage30_gto48 wp6_osp_coverage40_gto48 wp6_osp_coverage50_gto48
do

cp $template $mother_dir/$configs_stor1
cp $template2 $mother_dir/$configs_stor1
cp $template3 $mother_dir/$configs_stor1
cp $template4 $mother_dir/$configs_stor1
cp $template5 $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh add_figures.sh $configs_stor1

done









