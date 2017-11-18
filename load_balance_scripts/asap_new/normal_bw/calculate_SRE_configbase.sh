#!/bin/sh

baseline=/stor1/hwang07/nb_asap/baseline/tsp_address_exp_gtoswl48_alloff_wattch1_nb

cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV ATAX BICG
do
cd $benchmark
./test *_GPU.txt $baseline/polybench/$benchmark/*_GPU.txt
cd ..
done
cd ..

cd CUDA
for benchmark in SLA TRA SCP CONS LPS
do
cd $benchmark
./test *_GPU.txt $baseline/CUDA/$benchmark/*_GPU.txt
cd ..
done

cd shoc
for benchmark in Triad
do
cd $benchmark
./test *_GPU.txt $baseline/CUDA/$benchmark/*_GPU.txt
cd ..
done



