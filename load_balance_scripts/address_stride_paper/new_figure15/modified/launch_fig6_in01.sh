#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor1/hwang07/modified_fig6

for configs_stor1 in dynamic_nopc_profile_gto48 osp_profile_gto48 dynamic_nolong_nopc_gto48
do

#13
#not changed: 
#tsp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in ATAX BICG GESUMMV MVT SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: 
#tsp not good: BlackScholes JPEG_ENCODE
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in CONS TRA SCP SLA
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done