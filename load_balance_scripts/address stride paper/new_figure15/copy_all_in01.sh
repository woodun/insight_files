#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor1/hwang07/final_coverage_osp

for configs_stor1 in coverage10_dynamic_osp_nopc_size8_gto48 coverage125_dynamic_osp_nopc_size8_gto48 coverage143_dynamic_osp_nopc_size8_gto48 coverage167_dynamic_osp_nopc_size8_gto48 coverage182_dynamic_osp_nopc_size8_gto48 coverage20_dynamic_osp_nopc_size8_gto48 coverage222_dynamic_osp_nopc_size8_gto48 coverage25_dynamic_osp_nopc_size8_gto48 coverage273_dynamic_osp_nopc_size8_gto48 coverage30_dynamic_osp_nopc_size8_gto48 coverage333_dynamic_osp_nopc_size8_gto48 coverage357_dynamic_osp_nopc_size8_gto48 coverage375_dynamic_osp_nopc_size8_gto48 coverage40_dynamic_osp_nopc_size8_gto48 coverage429_dynamic_osp_nopc_size8_gto48 coverage455_dynamic_osp_nopc_size8_gto48 coverage474_dynamic_osp_nopc_size8_gto48 coverage50_dynamic_osp_nopc_size8_gto48 coverage526_dynamic_osp_nopc_size8_gto48 coverage555_dynamic_osp_nopc_size8_gto48 coverage571_dynamic_osp_nopc_size8_gto48 coverage60_dynamic_osp_nopc_size8_gto48 coverage625_dynamic_osp_nopc_size8_gto48 coverage647_dynamic_osp_nopc_size8_gto48 coverage688_dynamic_osp_nopc_size8_gto48 coverage70_dynamic_osp_nopc_size8_gto48 coverage727_dynamic_osp_nopc_size8_gto48 coverage75_dynamic_osp_nopc_size8_gto48 coverage786_dynamic_osp_nopc_size8_gto48 coverage80_dynamic_osp_nopc_size8_gto48 coverage833_dynamic_osp_nopc_size8_gto48 coverage857_dynamic_osp_nopc_size8_gto48 coverage875_dynamic_osp_nopc_size8_gto48 coverage90_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage10_gto48 wp0_osp_coverage125_gto48 wp0_osp_coverage143_gto48 wp0_osp_coverage167_gto48 wp0_osp_coverage182_gto48 wp0_osp_coverage20_gto48 wp0_osp_coverage222_gto48 wp0_osp_coverage25_gto48 wp0_osp_coverage273_gto48 wp0_osp_coverage30_gto48 wp0_osp_coverage333_gto48 wp0_osp_coverage357_gto48 wp0_osp_coverage375_gto48 wp0_osp_coverage40_gto48 wp0_osp_coverage429_gto48 wp0_osp_coverage455_gto48 wp0_osp_coverage474_gto48 wp0_osp_coverage50_gto48 wp0_osp_coverage526_gto48 wp0_osp_coverage555_gto48 wp0_osp_coverage571_gto48 wp0_osp_coverage60_gto48 wp0_osp_coverage625_gto48 wp0_osp_coverage647_gto48 wp0_osp_coverage688_gto48 wp0_osp_coverage70_gto48 wp0_osp_coverage727_gto48 wp0_osp_coverage75_gto48 wp0_osp_coverage786_gto48 wp0_osp_coverage80_gto48 wp0_osp_coverage833_gto48 wp0_osp_coverage857_gto48 wp0_osp_coverage875_gto48 wp0_osp_coverage90_gto48 wp2_osp_coverage10_gto48 wp2_osp_coverage125_gto48 wp2_osp_coverage143_gto48 wp2_osp_coverage167_gto48 wp2_osp_coverage182_gto48 wp2_osp_coverage20_gto48 wp2_osp_coverage222_gto48 wp2_osp_coverage25_gto48 wp2_osp_coverage273_gto48 wp2_osp_coverage30_gto48 wp2_osp_coverage333_gto48 wp2_osp_coverage357_gto48 wp2_osp_coverage375_gto48 wp2_osp_coverage40_gto48 wp2_osp_coverage429_gto48 wp2_osp_coverage455_gto48 wp2_osp_coverage474_gto48 wp2_osp_coverage50_gto48 wp2_osp_coverage526_gto48 wp2_osp_coverage555_gto48 wp2_osp_coverage571_gto48 wp2_osp_coverage60_gto48 wp2_osp_coverage625_gto48 wp2_osp_coverage647_gto48 wp2_osp_coverage688_gto48 wp2_osp_coverage70_gto48 wp2_osp_coverage727_gto48 wp2_osp_coverage75_gto48 wp2_osp_coverage786_gto48 wp2_osp_coverage80_gto48 wp2_osp_coverage833_gto48 wp2_osp_coverage857_gto48 wp2_osp_coverage875_gto48 wp2_osp_coverage90_gto48 wp4_osp_coverage10_gto48 wp4_osp_coverage125_gto48 wp4_osp_coverage143_gto48 wp4_osp_coverage167_gto48 wp4_osp_coverage182_gto48 wp4_osp_coverage20_gto48 wp4_osp_coverage222_gto48 wp4_osp_coverage25_gto48 wp4_osp_coverage273_gto48 wp4_osp_coverage30_gto48 wp4_osp_coverage333_gto48 wp4_osp_coverage357_gto48 wp4_osp_coverage375_gto48 wp4_osp_coverage40_gto48 wp4_osp_coverage429_gto48 wp4_osp_coverage455_gto48 wp4_osp_coverage474_gto48 wp4_osp_coverage50_gto48 wp4_osp_coverage526_gto48 wp4_osp_coverage555_gto48 wp4_osp_coverage571_gto48 wp4_osp_coverage60_gto48 wp4_osp_coverage625_gto48 wp4_osp_coverage647_gto48 wp4_osp_coverage688_gto48 wp4_osp_coverage70_gto48 wp4_osp_coverage727_gto48 wp4_osp_coverage75_gto48 wp4_osp_coverage786_gto48 wp4_osp_coverage80_gto48 wp4_osp_coverage833_gto48 wp4_osp_coverage857_gto48 wp4_osp_coverage875_gto48 wp4_osp_coverage90_gto48 wp6_osp_coverage10_gto48 wp6_osp_coverage125_gto48 wp6_osp_coverage143_gto48 wp6_osp_coverage167_gto48 wp6_osp_coverage182_gto48 wp6_osp_coverage20_gto48 wp6_osp_coverage222_gto48 wp6_osp_coverage25_gto48 wp6_osp_coverage273_gto48 wp6_osp_coverage30_gto48 wp6_osp_coverage333_gto48 wp6_osp_coverage357_gto48 wp6_osp_coverage375_gto48 wp6_osp_coverage40_gto48 wp6_osp_coverage429_gto48 wp6_osp_coverage455_gto48 wp6_osp_coverage474_gto48 wp6_osp_coverage50_gto48 wp6_osp_coverage526_gto48 wp6_osp_coverage555_gto48 wp6_osp_coverage571_gto48 wp6_osp_coverage60_gto48 wp6_osp_coverage625_gto48 wp6_osp_coverage647_gto48 wp6_osp_coverage688_gto48 wp6_osp_coverage70_gto48 wp6_osp_coverage727_gto48 wp6_osp_coverage75_gto48 wp6_osp_coverage786_gto48 wp6_osp_coverage80_gto48 wp6_osp_coverage833_gto48 wp6_osp_coverage857_gto48 wp6_osp_coverage875_gto48 wp6_osp_coverage90_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









