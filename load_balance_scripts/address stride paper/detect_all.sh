#!/bin/sh

rm /home/hwang07/stor1/relaunch.txt

sh detect_all_off.sh
sh detect_dynamic_profile.sh
sh detect_osp_profile.sh
sh detect_tsp_profile.sh
sh detect_spatial_osp_profile.sh
sh detect_dynamic_nopc_profile.sh
sh detect_warp_partition_osp_profile.sh

sh detect_dynamic.sh
sh detect_coverage_osp.sh
sh detect_coverage_tsp.sh
sh detect_spatial_osp.sh
sh detect_dynamic_nopc.sh
sh detect_warp_partition_osp.sh