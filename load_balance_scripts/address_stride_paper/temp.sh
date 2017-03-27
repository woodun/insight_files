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


cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/dynamic_noold_nopc_S/dynamic_noold_nopc_gto48
cd dynamic_noold_nopc_gto48
sh setup_ALL.sh dynamic_noold_nopc_gto48