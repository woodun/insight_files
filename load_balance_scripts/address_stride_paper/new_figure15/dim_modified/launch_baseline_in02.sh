#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor2/hwang07/dim_modified_baseline

for configs_stor1 in tsp_address_exp_gtoswl48_alloff
do

#13
#not changed: ATAX BICG GESUMMV GRAMSCHM MVT SYR2K SYRK 2DCONV_EMBOSS
#tsp not good: 
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV_BLUR 2DCONV 2MM 3DCONV 3MM GEMM FDTD-2D
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: SLA TRA CONS
#tsp not good: BlackScholes JPEG_ENCODE
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SCP
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done