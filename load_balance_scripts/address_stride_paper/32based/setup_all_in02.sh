#!/bin/sh

for configs in 32based_coverage_osp_S 32based_dynamic_profile_S 32based_osp_profile_S 32based_tsp_profile_S 32based_osp_nopc_profile_S 32based_tsp_nopc_profile_S 32based_warp_partition_tsp_profile_S 32based_coverage_dynamic_S 32based_coverage_tsp_S 32based_coverage_osp_nopc_S
do

cd /home/hwang07/stor2/$configs

for dirs in `ls`
do

cd $dirs
sh setup_ALL.sh $dirs
pwd
cd ..

done

done