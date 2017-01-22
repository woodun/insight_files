#!/bin/sh

cd /stor1/hwang07/SNR_collection
rm -r *

mkdir osp1
mkdir osp3
mkdir tsp1
mkdir dynamic_nopc1
mkdir dynamic1
mkdir spatial_osp1
mkdir warp_partition_osp1

sh collect_all_configs_coverage_osp1_SNR.sh
sh collect_all_configs_coverage_osp3_SNR.sh
sh collect_all_configs_coverage_tsp1_SNR.sh
sh collect_all_configs_dynamic_nopc1_SNR.sh
sh collect_all_configs_dynamic1_SNR.sh
sh collect_all_configs_spatial_osp1_SNR.sh
sh collect_all_configs_warp_partition_osp1_SNR.sh
