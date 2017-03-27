#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/dynamic_nopc_S/dynamic_nopc_gto48
#cd dynamic_nopc_gto48
#sh setup_ALL.sh dynamic_nopc_gto48
#sh setup_ALL.sh dynamic_nopc_lrr48
#sh setup_ALL.sh dynamic_nopc_RR48
###################################################################################

#specify your config path in stor1
for configs_stor1 in /stor1/hwang07/dynamic_nopc_S/dynamic_nopc_gto48 /stor1/hwang07/dynamic_nopc_S/dynamic_nopc_lrr48 /stor1/hwang07/dynamic_nopc_S/dynamic_nopc_RR48
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