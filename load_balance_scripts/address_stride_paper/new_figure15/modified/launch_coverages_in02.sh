#!/bin/sh
#this one works with applications_modified

#####################################################launch in in01?
mother_dir=/stor2/hwang07/modified_tsp

for configs_stor1 in coverage5_dynamic_tsp_nopc_size8_gto48 coverage10_dynamic_tsp_nopc_size8_gto48 coverage15_dynamic_tsp_nopc_size8_gto48 coverage20_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage5_gto48 wp0_tsp_coverage10_gto48 wp0_tsp_coverage15_gto48 wp0_tsp_coverage20_gto48 wp6_tsp_coverage5_gto48 wp6_tsp_coverage10_gto48 wp6_tsp_coverage15_gto48 wp6_tsp_coverage20_gto48 coverage20_dynamic_tsp_nopc_size8_RR48 coverage10_dynamic_tsp_nopc_size8_RR48 wp0_tsp_coverage20_RR48 wp6_tsp_coverage20_RR48 wp0_tsp_coverage10_RR48 wp6_tsp_coverage10_RR48
do

#13
#not changed: ATAX BICG GESUMMV MVT SYR2K SYRK 2DCONV 3DCONV
#tsp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: CONS TRA SCP SLA
#tsp not good: BlackScholes JPEG_ENCODE
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in LPS
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done