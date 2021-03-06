#!/bin/sh

#####################################################
mother_dir=/stor1/hwang07/last_accurate_osp

#specify your config path in stor1
for configs_stor1 in coverage10_dynamic_osp_nopc_size8_gto48 coverage20_dynamic_osp_nopc_size8_gto48 coverage30_dynamic_osp_nopc_size8_gto48 coverage40_dynamic_osp_nopc_size8_gto48 coverage50_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage10_gto48 wp0_osp_coverage20_gto48 wp0_osp_coverage30_gto48 wp0_osp_coverage40_gto48 wp0_osp_coverage50_gto48 wp2_osp_coverage10_gto48 wp2_osp_coverage20_gto48 wp2_osp_coverage30_gto48 wp2_osp_coverage40_gto48 wp2_osp_coverage50_gto48 wp4_osp_coverage10_gto48 wp4_osp_coverage20_gto48 wp4_osp_coverage30_gto48 wp4_osp_coverage40_gto48 wp4_osp_coverage50_gto48 wp6_osp_coverage10_gto48 wp6_osp_coverage20_gto48 wp6_osp_coverage30_gto48 wp6_osp_coverage40_gto48 wp6_osp_coverage50_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG SYR2K
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done