#!/bin/sh

#####################################################
mother_dir=/stor2/hwang07/final_coverage_tsp

#specify your config path in stor1
for configs_stor1 in coverage10_dynamic_tsp_nopc_size8_gto48 coverage125_dynamic_tsp_nopc_size8_gto48 coverage143_dynamic_tsp_nopc_size8_gto48 coverage167_dynamic_tsp_nopc_size8_gto48 coverage182_dynamic_tsp_nopc_size8_gto48 coverage20_dynamic_tsp_nopc_size8_gto48 coverage222_dynamic_tsp_nopc_size8_gto48 coverage25_dynamic_tsp_nopc_size8_gto48 coverage273_dynamic_tsp_nopc_size8_gto48 coverage30_dynamic_tsp_nopc_size8_gto48 coverage333_dynamic_tsp_nopc_size8_gto48 coverage357_dynamic_tsp_nopc_size8_gto48 coverage375_dynamic_tsp_nopc_size8_gto48 coverage40_dynamic_tsp_nopc_size8_gto48 coverage429_dynamic_tsp_nopc_size8_gto48 coverage455_dynamic_tsp_nopc_size8_gto48 coverage474_dynamic_tsp_nopc_size8_gto48 coverage50_dynamic_tsp_nopc_size8_gto48 coverage526_dynamic_tsp_nopc_size8_gto48 coverage555_dynamic_tsp_nopc_size8_gto48 coverage571_dynamic_tsp_nopc_size8_gto48 coverage60_dynamic_tsp_nopc_size8_gto48 coverage625_dynamic_tsp_nopc_size8_gto48 coverage647_dynamic_tsp_nopc_size8_gto48 coverage688_dynamic_tsp_nopc_size8_gto48
do

#13
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
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in TRA LPS SLA
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done