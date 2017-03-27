#!/bin/sh

cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG SYR2K
do
cd $benchmark
./test *_GPU.txt *_CPU.txt
cd ..
done
cd ..

cd CUDA
for benchmark in TRA LPS SLA
do
cd $benchmark
./test *_GPU.txt *_CPU.txt
cd ..
done
cd ..