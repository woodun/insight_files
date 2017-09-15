#!/bin/sh

cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
./test *_GPU.txt *_CPU.txt
cd ..
done
cd ..

cd CUDA
for benchmark in SCP FWT LPS BlackScholes SLA TRA CONS
do
cd $benchmark
./test *_GPU.txt *_CPU.txt
cd ..
done

cd RAY
./cmp_image outputFinal.bmp /sciclone/data10/hwang07/GPU_RESEARCH/amc/outputFinal.bmp
cd ..

cd ..
