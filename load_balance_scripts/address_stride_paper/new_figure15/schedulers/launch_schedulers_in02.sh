#!/bin/sh

#####################################################
mother_dir=/stor2/hwang07/final_schedulers_tsp

#specify your config path in stor1
for configs_stor1 in coverage100_dynamic_tsp_nopc_size8_lrr48 coverage100_dynamic_tsp_nopc_size8_RR48 coverage20_dynamic_tsp_nopc_size8_lrr48 coverage40_dynamic_tsp_nopc_size8_lrr48 coverage20_dynamic_tsp_nopc_size8_RR48 coverage40_dynamic_tsp_nopc_size8_RR48 wp0_tsp_coverage20_lrr48 wp0_tsp_coverage40_lrr48 wp0_tsp_coverage20_RR48 wp0_tsp_coverage40_RR48 wp2_tsp_coverage20_lrr48 wp2_tsp_coverage40_lrr48 wp2_tsp_coverage20_RR48 wp2_tsp_coverage40_RR48 wp6_tsp_coverage20_lrr48 wp6_tsp_coverage40_lrr48 wp6_tsp_coverage20_RR48 wp6_tsp_coverage40_RR48
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