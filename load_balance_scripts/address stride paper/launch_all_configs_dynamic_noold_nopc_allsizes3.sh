#!/bin/sh

###################################################################################
mother_dir=/stor1/hwang07/dynamic_noold_nopc_S

#specify your config path in stor1
for configs_stor1 in dynamic_noold_nopc_size24_gto48 dynamic_noold_nopc_size23_gto48 dynamic_noold_nopc_size22_gto48 dynamic_noold_nopc_size21_gto48 dynamic_noold_nopc_size20_gto48 dynamic_noold_nopc_size19_gto48 dynamic_noold_nopc_size18_gto48 dynamic_noold_nopc_size17_gto48
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