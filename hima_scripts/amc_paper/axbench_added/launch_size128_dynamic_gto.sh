#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_dynamic_new

for configs_stor1 in 
do

#15
#all: GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#removed: 2DCONV FDTD-2D GRAMSCHM
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV GEMM SYR2K
do
cd $benchmark
qsub hi_pbs_$benchmark.pbs
cd ..
done

#8
#figures: srad_v1 histo JPEG RAY
#all: SCP FWT LPS BlackScholes SLA TRA CONS RAY
#removed:
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SCP FWT LPS BlackScholes SLA TRA CONS RAY
do
cd $benchmark
qsub hi_pbs_$benchmark.pbs
cd ..
done

#10
#binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in 
do
cd $benchmark
qsub hi_pbs_$benchmark.pbs
cd ..
done

done