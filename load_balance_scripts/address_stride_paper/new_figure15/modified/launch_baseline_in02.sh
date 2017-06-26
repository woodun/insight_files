#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor2/hwang07/modified_baseline

for configs_stor1 in tsp_address_exp_gtoswl48_alloff
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN 2DCONV 2MM 3DCONV 3MM ATAX BICG FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK
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
for benchmark in JPEG_ENCODE JPEG_DECODE RAY BlackScholes CONS SCP SLA TRA
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done