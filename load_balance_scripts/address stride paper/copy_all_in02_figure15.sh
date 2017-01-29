#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_osp_S/coverage25_osp_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_osp_S/coverage40_osp_gto48
cd /stor2/hwang07/coverage_osp_S/coverage40_osp_gto48
sh setup_ALL.sh coverage40_osp_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_osp_S/coverage44_osp_gto48
cd /stor2/hwang07/coverage_osp_S/coverage44_osp_gto48
sh setup_ALL.sh coverage44_osp_gto48
#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_osp_S/coverage50_osp_gto48

cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_tsp_S/coverage25_tsp_gto48
cd /stor2/hwang07/coverage_tsp_S/coverage25_tsp_gto48
sh setup_ALL.sh coverage25_tsp_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_tsp_S/coverage40_tsp_gto48
cd /stor2/hwang07/coverage_tsp_S/coverage40_tsp_gto48
sh setup_ALL.sh coverage40_tsp_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_tsp_S/coverage44_tsp_gto48
cd /stor2/hwang07/coverage_tsp_S/coverage44_tsp_gto48
sh setup_ALL.sh coverage44_tsp_gto48
#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_tsp_S/coverage50_tsp_gto48

rm -r /stor2/hwang07/coverage_osp_nopc_S/coverage25_tsp_nopc_gto48
rm -r /stor2/hwang07/coverage_osp_nopc_S/coverage40_tsp_nopc_gto48
rm -r /stor2/hwang07/coverage_osp_nopc_S/coverage44_tsp_nopc_gto48
rm -r /stor2/hwang07/coverage_osp_nopc_S/coverage50_tsp_nopc_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_osp_nopc_S/coverage25_osp_nopc_gto48
cd /stor2/hwang07/coverage_osp_nopc_S/coverage25_osp_nopc_gto48
sh setup_ALL.sh coverage25_osp_nopc_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_osp_nopc_S/coverage40_osp_nopc_gto48
cd /stor2/hwang07/coverage_osp_nopc_S/coverage40_osp_nopc_gto48
sh setup_ALL.sh coverage40_osp_nopc_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_osp_nopc_S/coverage44_osp_nopc_gto48
cd /stor2/hwang07/coverage_osp_nopc_S/coverage44_osp_nopc_gto48
sh setup_ALL.sh coverage44_osp_nopc_gto48
cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_osp_nopc_S/coverage50_osp_nopc_gto48
cd /stor2/hwang07/coverage_osp_nopc_S/coverage50_osp_nopc_gto48
sh setup_ALL.sh coverage50_osp_nopc_gto48