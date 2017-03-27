#!/bin/sh

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor1/hwang07/coverage_dynamic_nopc_S

for configs_stor1 in coverage10_dynamic_nopc_gto48 coverage125_dynamic_nopc_gto48 coverage143_dynamic_nopc_gto48 coverage167_dynamic_nopc_gto48 coverage20_dynamic_nopc_gto48 coverage33_dynamic_nopc_gto48 coverage375_dynamic_nopc_gto48 coverage555_dynamic_nopc_gto48 coverage625_dynamic_nopc_gto48 coverage666_dynamic_nopc_gto48 coverage70_dynamic_nopc_gto48 coverage75_dynamic_nopc_gto48 coverage80_dynamic_nopc_gto48 coverage833_dynamic_nopc_gto48 coverage857_dynamic_nopc_gto48 coverage875_dynamic_nopc_gto48 coverage90_dynamic_nopc_gto48
do

cp -r $template $mother_dir/configs_stor1
cd $mother_dir/configs_stor1
sh setup_ALL.sh configs_stor1

done

#####################################################################################
mother_dir=/stor2/hwang07/coverage_osp_S/

for configs_stor1 in coverage10_osp_gto48 coverage125_osp_gto48 coverage143_osp_gto48 coverage167_osp_gto48 coverage20_osp_gto48 coverage33_osp_gto48 coverage375_osp_gto48 coverage555_osp_gto48 coverage625_osp_gto48 coverage666_osp_gto48 coverage70_osp_gto48 coverage75_osp_gto48 coverage80_osp_gto48 coverage833_osp_gto48 coverage857_osp_gto48 coverage875_osp_gto48 coverage90_osp_gto48
do

cp -r $template $mother_dir/configs_stor1
cd $mother_dir/configs_stor1
sh setup_ALL.sh configs_stor1

done

#####################################################################################
mother_dir=/stor2/hwang07/coverage_osp_nopc_S/

for configs_stor1 in coverage10_osp_nopc_gto48 coverage125_osp_nopc_gto48 coverage143_osp_nopc_gto48 coverage167_osp_nopc_gto48 coverage20_osp_nopc_gto48 coverage33_osp_nopc_gto48 coverage375_osp_nopc_gto48 coverage555_osp_nopc_gto48 coverage625_osp_nopc_gto48 coverage666_osp_nopc_gto48 coverage70_osp_nopc_gto48 coverage75_osp_nopc_gto48 coverage80_osp_nopc_gto48 coverage833_osp_nopc_gto48 coverage857_osp_nopc_gto48 coverage875_osp_nopc_gto48 coverage90_osp_nopc_gto48
do

cp -r $template $mother_dir/configs_stor1
cd $mother_dir/configs_stor1
sh setup_ALL.sh configs_stor1

done

#####################################################################################
mother_dir=/stor2/hwang07/coverage_tsp_S/

for configs_stor1 in coverage10_tsp_gto48 coverage125_tsp_gto48 coverage143_tsp_gto48 coverage167_tsp_gto48 coverage20_tsp_gto48 coverage33_tsp_gto48 coverage375_tsp_gto48 coverage555_tsp_gto48 coverage625_tsp_gto48 coverage666_tsp_gto48 coverage70_tsp_gto48 coverage75_tsp_gto48 coverage80_tsp_gto48 coverage833_tsp_gto48 coverage857_tsp_gto48 coverage875_tsp_gto48 coverage90_tsp_gto48
do

cp -r $template $mother_dir/configs_stor1
cd $mother_dir/configs_stor1
sh setup_ALL.sh configs_stor1

done

#####################################################################################
mother_dir=/stor1/hwang07/coverage_tsp_nopc_S/

for configs_stor1 in coverage10_tsp_nopc_gto48 coverage125_tsp_nopc_gto48 coverage143_tsp_nopc_gto48 coverage167_tsp_nopc_gto48 coverage20_tsp_nopc_gto48 coverage33_tsp_nopc_gto48 coverage375_tsp_nopc_gto48 coverage555_tsp_nopc_gto48 coverage625_tsp_nopc_gto48 coverage666_tsp_nopc_gto48 coverage70_tsp_nopc_gto48 coverage75_tsp_nopc_gto48 coverage80_tsp_nopc_gto48 coverage833_tsp_nopc_gto48 coverage857_tsp_nopc_gto48 coverage875_tsp_nopc_gto48 coverage90_tsp_nopc_gto48
do

cp -r $template $mother_dir/configs_stor1
cd $mother_dir/configs_stor1
sh setup_ALL.sh configs_stor1

done

#####################################################################################
mother_dir=/stor1/hwang07/warp_partition_osp_S/

for configs_stor1 in wp2_osp_coverage10_gto48 wp2_osp_coverage125_gto48 wp2_osp_coverage143_gto48 wp2_osp_coverage167_gto48 wp2_osp_coverage20_gto48 wp2_osp_coverage33_gto48 wp2_osp_coverage375_gto48 wp2_osp_coverage555_gto48 wp2_osp_coverage625_gto48 wp2_osp_coverage666_gto48 wp2_osp_coverage70_gto48 wp2_osp_coverage75_gto48 wp2_osp_coverage80_gto48 wp2_osp_coverage833_gto48 wp2_osp_coverage857_gto48 wp2_osp_coverage875_gto48 wp2_osp_coverage90_gto48
do

cp -r $template $mother_dir/configs_stor1
cd $mother_dir/configs_stor1
sh setup_ALL.sh configs_stor1

done

#####################################################################################
mother_dir=/stor1/hwang07/warp_partition_tsp_S/

for configs_stor1 in wp2_tsp_coverage10_gto48 wp2_tsp_coverage125_gto48 wp2_tsp_coverage143_gto48 wp2_tsp_coverage167_gto48 wp2_tsp_coverage20_gto48 wp2_tsp_coverage33_gto48 wp2_tsp_coverage375_gto48 wp2_tsp_coverage555_gto48 wp2_tsp_coverage625_gto48 wp2_tsp_coverage666_gto48 wp2_tsp_coverage70_gto48 wp2_tsp_coverage75_gto48 wp2_tsp_coverage80_gto48 wp2_tsp_coverage833_gto48 wp2_tsp_coverage857_gto48 wp2_tsp_coverage875_gto48 wp2_tsp_coverage90_gto48
do

cp -r $template $mother_dir/configs_stor1
cd $mother_dir/configs_stor1
sh setup_ALL.sh configs_stor1

done










