#!/bin/sh

#sh launch_all_configs_coverage25_dynamic.sh
#sh launch_all_configs_coverage50_dynamic.sh
#sh launch_all_configs_coverage75_dynamic.sh

#sh launch_all_configs_coverage25_dynamic_nopc.sh
#sh launch_all_configs_coverage50_dynamic_nopc.sh
#sh launch_all_configs_coverage75_dynamic_nopc.sh

sh launch_all_configs_coverage_osp_figure15.sh
sh launch_all_configs_coverage_tsp_figure15.sh

sh launch_all_configs_coverage_osp_nopc_figure15.sh
sh launch_all_configs_coverage_tsp_nopc_figure15.sh

sh launch_all_configs_warp_partition_osp_figure15.sh
sh launch_all_configs_warp_partition_tsp_figure15.sh