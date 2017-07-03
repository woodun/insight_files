#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor2/hwang07/dim_modified_tsp

for configs_stor1 in coverage100_dynamic_tsp_nopc_size8_gto48 coverage10_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp6_tsp_coverage10_gto48
do

#13
#not changed: ATAX BICG GESUMMV GRAMSCHM MVT SYR2K SYRK
#tsp not good: FDTD-2D
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV_BLUR 2DCONV_EMBOSS 2DCONV 2MM 3DCONV 3MM GEMM
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: SLA TRA CONS
#tsp not good: BlackScholes JPEG_ENCODE
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SCP
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done