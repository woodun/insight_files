#!/bin/sh

###################################################################################
mother_dir=/stor1/hwang07/dynamic_noold_nopc_S

#specify your config path in stor1
for configs_stor1 in dynamic_noold_nopc_size10_gto48 dynamic_noold_nopc_size9_gto48 dynamic_noold_nopc_size16_gto48 dynamic_noold_nopc_size15_gto48 dynamic_noold_nopc_size14_gto48 dynamic_noold_nopc_size13_gto48 dynamic_noold_nopc_size12_gto48 dynamic_noold_nopc_size11_gto48
do

#13
cd $mother_dir
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
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done