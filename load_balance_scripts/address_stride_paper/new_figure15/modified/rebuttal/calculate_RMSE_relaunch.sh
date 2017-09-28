#!/bin/sh

########################################

for i in /stor2/hwang07/modified_tsp/coverage5_dynamic_tsp_nopc_size8_gto48/polybench/3DCONV /stor2/hwang07/modified_tsp/coverage5_dynamic_tsp_nopc_size8_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/wp0_tsp_coverage5_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/wp6_tsp_coverage5_gto48/polybench/3DCONV /stor2/hwang07/modified_tsp/wp6_tsp_coverage5_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/coverage10_dynamic_tsp_nopc_size8_gto48/polybench/3DCONV /stor2/hwang07/modified_tsp/coverage10_dynamic_tsp_nopc_size8_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/wp0_tsp_coverage10_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/wp6_tsp_coverage10_gto48/polybench/3DCONV /stor2/hwang07/modified_tsp/wp6_tsp_coverage10_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/coverage15_dynamic_tsp_nopc_size8_gto48/polybench/3DCONV /stor2/hwang07/modified_tsp/coverage15_dynamic_tsp_nopc_size8_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/wp0_tsp_coverage15_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/wp6_tsp_coverage15_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/coverage20_dynamic_tsp_nopc_size8_gto48/polybench/3DCONV /stor2/hwang07/modified_tsp/coverage20_dynamic_tsp_nopc_size8_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/wp0_tsp_coverage20_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/wp6_tsp_coverage20_gto48/polybench/3DCONV /stor2/hwang07/modified_tsp/wp6_tsp_coverage20_gto48/CUDA/SLA /stor2/hwang07/modified_tsp/coverage10_dynamic_tsp_nopc_size8_RR48/polybench/3DCONV /stor2/hwang07/modified_tsp/coverage10_dynamic_tsp_nopc_size8_RR48/CUDA/SLA /stor2/hwang07/modified_tsp/wp0_tsp_coverage10_RR48/CUDA/SLA /stor2/hwang07/modified_tsp/wp6_tsp_coverage10_RR48/polybench/3DCONV /stor2/hwang07/modified_tsp/wp6_tsp_coverage10_RR48/CUDA/SLA /stor2/hwang07/modified_tsp/coverage20_dynamic_tsp_nopc_size8_RR48/polybench/3DCONV /stor2/hwang07/modified_tsp/coverage20_dynamic_tsp_nopc_size8_RR48/CUDA/SLA /stor2/hwang07/modified_tsp/wp0_tsp_coverage20_RR48/CUDA/SLA /stor2/hwang07/modified_tsp/wp6_tsp_coverage20_RR48/CUDA/SLA /stor1/hwang07/modified_osp/coverage5_dynamic_osp_nopc_size8_gto48/CUDA/SLA /stor1/hwang07/modified_osp/coverage10_dynamic_osp_nopc_size8_gto48/polybench/3DCONV /stor1/hwang07/modified_osp/coverage10_dynamic_osp_nopc_size8_gto48/CUDA/SLA /stor1/hwang07/modified_osp/wp0_osp_coverage10_gto48/CUDA/SLA /stor1/hwang07/modified_osp/wp6_osp_coverage10_gto48/CUDA/SLA /stor1/hwang07/modified_osp/coverage15_dynamic_osp_nopc_size8_gto48/CUDA/SLA /stor1/hwang07/modified_osp/coverage20_dynamic_osp_nopc_size8_gto48/polybench/3DCONV /stor1/hwang07/modified_osp/coverage20_dynamic_osp_nopc_size8_gto48/CUDA/SLA /stor1/hwang07/modified_osp/wp0_osp_coverage20_gto48/CUDA/SLA /stor1/hwang07/modified_osp/coverage10_dynamic_osp_nopc_size8_RR48/CUDA/SLA /stor1/hwang07/modified_osp/wp6_osp_coverage10_RR48/CUDA/SLA /stor1/hwang07/modified_osp/coverage20_dynamic_osp_nopc_size8_RR48/CUDA/SLA /stor1/hwang07/modified_osp/wp0_osp_coverage20_RR48/CUDA/SLA
do

cd $i


qsub calculate_RMSE_appbase_in02.pbs


cd ..

done
