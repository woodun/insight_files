#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/coverage_tsp_S/coverage50_tsp_gto48
#cd coverage50_tsp_gto48
#sh setup_ALL.sh coverage50_tsp_gto48
#sh setup_ALL.sh coverage50_tsp_lrr48
#sh setup_ALL.sh coverage50_tsp_RR48
#####################################################

#specify your config path in stor1
for configs_stor1 in /stor2/hwang07/coverage_tsp_S/coverage25_tsp_gto48 /stor2/hwang07/coverage_tsp_S/coverage40_tsp_gto48 /stor2/hwang07/coverage_tsp_S/coverage44_tsp_gto48
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

#figures: srad_v1 histo JPEG RAY
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