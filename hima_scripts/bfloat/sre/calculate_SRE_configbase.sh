#!/bin/sh

baseline=/sciclone/pscr/hwang07/bfloat/sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_baseline

cd polybench
for benchmark in GESUMMV MVT 2MM 3MM ATAX BICG 3DCONV GEMM
do
cd $benchmark
./test *_GPU.txt $baseline/polybench/$benchmark/*_GPU.txt
cd ..
done
cd ..

cd CUDA
for benchmark in TRA SCP CONS FWT LPS SLA
do
cd $benchmark
./test *_GPU.txt $baseline/CUDA/$benchmark/*_GPU.txt
cd ..
done

cd RAY
./cmp_image outputFinal.bmp $baseline/CUDA/RAY/outputFinal.bmp
cd ..

cd ..

cd axbench
for benchmark in blackscholes convolution inversek2j jmeint newton-raph
do
cd $benchmark
./test *.data $baseline/axbench/$benchmark/*.data
cd ..
done
cd ..

cd axbench
for benchmark in laplacian meanfilter sobel srad
do
cd $benchmark
./cmp_image *.pgm $baseline/axbench/$benchmark/*.pgm
cd ..
done
cd ..
