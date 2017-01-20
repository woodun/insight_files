#!/bin/sh

for dirs in /stor2/hwang07/coverage_osp_S/coverage25_osp_gto48/GESUMMV /stor2/hwang07/coverage_osp_S/coverage50_osp_gto48/GESUMMV /stor2/hwang07/coverage_osp_S/coverage75_osp_gto48/GESUMMV /stor2/hwang07/coverage_osp_S/coverage75_osp_gto48/2MM /stor2/hwang07/coverage_osp_S/coverage75_osp_gto48/3MM /stor2/hwang07/coverage_osp_S/coverage75_osp_gto48/BICG /stor2/hwang07/coverage_osp_S/coverage75_osp_gto48/GEMM /stor2/hwang07/coverage_osp_S/coverage100_osp_gto48/2DCONV /stor2/hwang07/coverage_osp_S/coverage50_osp_lrr48/GESUMMV /stor1/hwang07/spatial_osp_S/spatial_osp_gto48/SYR2K /stor1/hwang07/warp_partition_osp_S/wp2_osp_coverage50_lrr48/GESUMMV /stor1/hwang07/warp_partition_osp_S/wp4_osp_coverage50_gto48/GESUMMV /stor1/hwang07/warp_partition_osp_S/wp4_osp_coverage50_lrr48/GESUMMV
do

cd $dirs
grep -o "gpu_tot_ipc =[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/gpu_tot_ipc =[ ]*//g" | xargs printf "0%s "

done