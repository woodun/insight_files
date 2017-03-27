#!/bin/sh

###################################################################################
mother_dir=/stor1/hwang07/warp_partition_tsp_S/

#specify your config path in stor1
for configs_stor1 in wp2_tsp_coverage10_gto48 wp2_tsp_coverage125_gto48 wp2_tsp_coverage143_gto48 wp2_tsp_coverage167_gto48 wp2_tsp_coverage20_gto48 wp2_tsp_coverage33_gto48 wp2_tsp_coverage375_gto48 wp2_tsp_coverage555_gto48 wp2_tsp_coverage625_gto48 wp2_tsp_coverage666_gto48 wp2_tsp_coverage70_gto48 wp2_tsp_coverage75_gto48 wp2_tsp_coverage80_gto48 wp2_tsp_coverage833_gto48 wp2_tsp_coverage857_gto48 wp2_tsp_coverage875_gto48 wp2_tsp_coverage90_gto48
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

#figures: JPEG RAY srad_v1 histo
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