#!/bin/sh

#####################################################
mother_dir=/stor2/hwang07/accurate_coverage_tsp

#specify your config path in stor1
for configs_stor1 in wp4_tsp_coverage125_gto48 wp4_tsp_coverage20_gto48 wp4_tsp_coverage25_gto48
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
for benchmark in TRA LPS SLA
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done