#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor1/hwang07/rebuttal_baseline

for configs_stor1 in tsp_address_exp_gtoswl48_alloff_wattch1
do

#13
#not changed: 2DCONV 3DCONV ATAX BICG GESUMMV MVT SYR2K SYRK
#tsp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
#2DCONV 3DCONV 2MM 3MM ATAX BICG FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN
#GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
#ATAX BICG
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: CONS TRA SCP SLA
#tsp not good: BlackScholes JPEG_ENCODE
#7 
#BlackScholes LPS RAY SCP SLA CONS TRA JPEG_ENCODE JPEG_DECODE
#SLA TRA SCP CONS
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in Triad
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done