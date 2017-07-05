#!/bin/sh

cd polybench
for benchmark in ATAX BICG GESUMMV GRAMSCHM MVT SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV
do
cd $benchmark
./test *_GPU.txt *_CPU.txt
cd ..
done
cd ..

cd CUDA
for benchmark in SLA TRA CONS SCP
do
cd $benchmark
./test *_GPU.txt *_CPU.txt
cd ..
done
cd ..