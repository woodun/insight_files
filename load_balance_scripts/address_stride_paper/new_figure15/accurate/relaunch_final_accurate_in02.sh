#!/bin/sh

#####################################################
mother_dir=/stor2/hwang07/final_accurate_tsp

#specify your config path in stor1
for configs_stor1 in coverage10_dynamic_tsp_nopc_size8_gto48 coverage20_dynamic_tsp_nopc_size8_gto48 coverage30_dynamic_tsp_nopc_size8_gto48 coverage40_dynamic_tsp_nopc_size8_gto48 coverage50_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp0_tsp_coverage20_gto48 wp0_tsp_coverage30_gto48 wp0_tsp_coverage40_gto48 wp0_tsp_coverage50_gto48 wp2_tsp_coverage10_gto48 wp2_tsp_coverage20_gto48 wp2_tsp_coverage30_gto48 wp2_tsp_coverage40_gto48 wp2_tsp_coverage50_gto48 wp4_tsp_coverage10_gto48 wp4_tsp_coverage20_gto48 wp4_tsp_coverage30_gto48 wp4_tsp_coverage40_gto48 wp4_tsp_coverage50_gto48 wp6_tsp_coverage10_gto48 wp6_tsp_coverage20_gto48 wp6_tsp_coverage30_gto48 wp6_tsp_coverage40_gto48 wp6_tsp_coverage50_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN
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
for benchmark in JPEG_ENCODE JPEG_DECODE RAY
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done