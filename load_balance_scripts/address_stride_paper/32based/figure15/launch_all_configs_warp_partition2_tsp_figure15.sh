#!/bin/sh

###################################################################################

#specify your config path in stor1
for configs_stor1 in /stor1/hwang07/warp_partition_tsp_S/wp2_tsp_coverage25_gto48 /stor1/hwang07/warp_partition_tsp_S/wp2_tsp_coverage40_gto48 /stor1/hwang07/warp_partition_tsp_S/wp2_tsp_coverage44_gto48 /stor1/hwang07/warp_partition_tsp_S/wp2_tsp_coverage50_gto48
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done