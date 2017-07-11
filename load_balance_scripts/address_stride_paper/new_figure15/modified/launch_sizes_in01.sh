#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor1/hwang07/modified_sizes

for configs_stor1 in dynamic_noold_nopc_size1_gto48 dynamic_noold_nopc_size2_gto48 dynamic_noold_nopc_size3_gto48 dynamic_noold_nopc_size4_gto48 dynamic_noold_nopc_size5_gto48 dynamic_noold_nopc_size6_gto48 dynamic_noold_nopc_size7_gto48 dynamic_noold_nopc_size8_gto48 dynamic_noold_nopc_size9_gto48 dynamic_noold_nopc_size10_gto48
do

#13
#not changed: ATAX BICG GESUMMV MVT SYR2K SYRK 2DCONV 3DCONV
#tsp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV_EMBOSS 2DCONV_BLUR
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: CONS TRA SCP SLA
#tsp not good: BlackScholes JPEG_ENCODE
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done