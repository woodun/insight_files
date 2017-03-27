#!/bin/sh

cd /stor1/hwang07/32based_SNR_collection

rm -r 32based_coverage_dynamic
mkdir 32based_coverage_dynamic

rm -r 32based_coverage_dynamic_nopc
mkdir 32based_coverage_dynamic_nopc

rm -r 32based_coverage_osp
mkdir 32based_coverage_osp

rm -r 32based_coverage_osp_nopc
mkdir 32based_coverage_osp_nopc

rm -r 32based_coverage_tsp
mkdir 32based_coverage_tsp

rm -r 32based_coverage_tsp_nopc
mkdir 32based_coverage_tsp_nopc

rm -r 32based_warp_partition_osp
mkdir 32based_warp_partition_osp

rm -r 32based_warp_partition_tsp
mkdir 32based_warp_partition_tsp

cd -

sh 32based_collect_all_configs_coverage_dynamic_nopc_SNR.sh
sh 32based_collect_all_configs_coverage_dynamic_SNR.sh
sh 32based_collect_all_configs_coverage_osp_nopc_SNR.sh
sh 32based_collect_all_configs_coverage_osp_SNR.sh
sh 32based_collect_all_configs_coverage_tsp_nopc_SNR.sh
sh 32based_collect_all_configs_coverage_tsp_SNR.sh
sh 32based_collect_all_configs_warp_partition_osp_SNR.sh
sh 32based_collect_all_configs_warp_partition_tsp_SNR.sh






