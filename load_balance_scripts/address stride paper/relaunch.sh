#!/bin/sh

sh launch_all_configs_dynamic.sh
sh launch_all_configs_dynamic_nopc.sh
sh launch_all_configs_dynamic_nopc_profile.sh
sh launch_all_configs_dynamic_profile.sh

for dirs in /stor2/hwang07/coverage_osp_S/coverage25_osp_gto48/polybench/GESUMMV /stor2/hwang07/coverage_osp_S/coverage50_osp_gto48/polybench/GESUMMV /stor2/hwang07/coverage_osp_S/coverage75_osp_gto48/polybench/GESUMMV /stor2/hwang07/coverage_osp_S/coverage75_osp_gto48/polybench/2MM /stor2/hwang07/coverage_osp_S/coverage75_osp_gto48/polybench/3MM /stor2/hwang07/coverage_osp_S/coverage75_osp_gto48/polybench/BICG /stor2/hwang07/coverage_osp_S/coverage75_osp_gto48/polybench/GEMM /stor2/hwang07/coverage_osp_S/coverage100_osp_gto48/polybench/2DCONV /stor2/hwang07/coverage_osp_S/coverage50_osp_lrr48/polybench/GESUMMV /stor1/hwang07/spatial_osp_S/spatial_osp_gto48/polybench/SYR2K /stor1/hwang07/warp_partition_osp_S/wp2_osp_coverage50_lrr48/polybench/GESUMMV /stor1/hwang07/warp_partition_osp_S/wp4_osp_coverage50_gto48/polybench/GESUMMV /stor1/hwang07/warp_partition_osp_S/wp4_osp_coverage50_lrr48/polybench/GESUMMV
do

cd $dirs
qsub pbs_*.pbs

done

