#!/bin/sh

for configs in 32based_dynamic_nopc_profile_S 32based_warp_partition_osp_profile_S 32based_coverage_dynamic_nopc_S 32based_coverage_tsp_nopc_S 32based_warp_partition_osp_S 32based_warp_partition_tsp_S
do

cd /home/hwang07/stor1/$configs

for dirs in `ls`
do

cd $dirs
sh setup_ALL.sh $dirs
pwd
cd ..

done

done