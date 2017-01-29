#!/bin/sh

cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/coverage_tsp_nopc_S/coverage25_tsp_nopc_gto48
cd /stor1/hwang07/coverage_tsp_nopc_S/coverage25_tsp_nopc_gto48
sh setup_ALL.sh coverage25_tsp_nopc_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/coverage_tsp_nopc_S/coverage40_tsp_nopc_gto48
cd /stor1/hwang07/coverage_tsp_nopc_S/coverage40_tsp_nopc_gto48
sh setup_ALL.sh coverage40_tsp_nopc_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/coverage_tsp_nopc_S/coverage44_tsp_nopc_gto48
cd /stor1/hwang07/coverage_tsp_nopc_S/coverage44_tsp_nopc_gto48
sh setup_ALL.sh coverage44_tsp_nopc_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/coverage_tsp_nopc_S/coverage50_tsp_nopc_gto48
cd /stor1/hwang07/coverage_tsp_nopc_S/coverage50_tsp_nopc_gto48
sh setup_ALL.sh coverage50_tsp_nopc_gto48

cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/warp_partition_osp_S/wp0_osp_coverage25_gto48
cd /stor1/hwang07/warp_partition_osp_S/wp0_osp_coverage25_gto48
sh setup_ALL.sh wp0_osp_coverage25_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/warp_partition_osp_S/wp0_osp_coverage40_gto48
cd /stor1/hwang07/warp_partition_osp_S/wp0_osp_coverage40_gto48
sh setup_ALL.sh wp0_osp_coverage40_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/warp_partition_osp_S/wp0_osp_coverage44_gto48
cd /stor1/hwang07/warp_partition_osp_S/wp0_osp_coverage44_gto48
sh setup_ALL.sh wp0_osp_coverage44_gto48
#cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/warp_partition_osp_S/wp0_osp_coverage50_gto48

cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/warp_partition_tsp_S/wp0_tsp_coverage25_gto48
cd /stor1/hwang07/warp_partition_tsp_S/wp0_tsp_coverage25_gto48
sh setup_ALL.sh wp0_tsp_coverage25_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/warp_partition_tsp_S/wp0_tsp_coverage40_gto48
cd /stor1/hwang07/warp_partition_tsp_S/wp0_tsp_coverage40_gto48
sh setup_ALL.sh wp0_tsp_coverage40_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/warp_partition_tsp_S/wp0_tsp_coverage44_gto48
cd /stor1/hwang07/warp_partition_tsp_S/wp0_tsp_coverage44_gto48
sh setup_ALL.sh wp0_tsp_coverage44_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/warp_partition_tsp_S/wp0_tsp_coverage50_gto48
cd /stor1/hwang07/warp_partition_tsp_S/wp0_tsp_coverage50_gto48
sh setup_ALL.sh wp0_tsp_coverage50_gto48
