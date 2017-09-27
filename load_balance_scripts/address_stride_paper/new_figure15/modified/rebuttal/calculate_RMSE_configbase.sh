#!/bin/sh

#compare -metric RMSE GESUMMV_CPU.txt GESUMMV_GPU.txt null > compare_error.txt 2> RMSE.txt
cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
compare -metric RMSE GESUMMV_CPU.txt GESUMMV_GPU.txt null > compare_error.txt 2> RMSE.txt
cd ..
done
cd ..

cd CUDA
for benchmark in SLA TRA SCP CONS
do
cd $benchmark
compare -metric RMSE GESUMMV_CPU.txt GESUMMV_GPU.txt null > compare_error.txt 2> RMSE.txt
cd ..
done
cd ..
