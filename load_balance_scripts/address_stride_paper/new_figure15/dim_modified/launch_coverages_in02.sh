#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor2/hwang07/dim_modified_tsp

for configs_stor1 in coverage100_dynamic_tsp_nopc_size8_gto48 coverage10_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp6_tsp_coverage10_gto48
do

#13
#not changed: 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV ATAX BICG  MVT SYRK
#tsp not good: GEMM FDTD-2D 2MM 3MM
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV GRAMSCHM SYR2K
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: SLA TRA SCP CONS
#tsp not good: BlackScholes JPEG_ENCODE
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