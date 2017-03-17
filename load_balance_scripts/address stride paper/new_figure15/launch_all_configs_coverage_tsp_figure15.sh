#!/bin/sh

#####################################################
mother_dir=/stor2/hwang07/coverage_tsp_S/

#specify your config path in stor1
for configs_stor1 in coverage10_tsp_gto48 coverage125_tsp_gto48 coverage143_tsp_gto48 coverage167_tsp_gto48 coverage20_tsp_gto48 coverage33_tsp_gto48 coverage375_tsp_gto48 coverage555_tsp_gto48 coverage625_tsp_gto48 coverage666_tsp_gto48 coverage70_tsp_gto48 coverage75_tsp_gto48 coverage80_tsp_gto48 coverage833_tsp_gto48 coverage857_tsp_gto48 coverage875_tsp_gto48 coverage90_tsp_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG GRAMSCHM SYR2K
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