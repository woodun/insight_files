#!/bin/sh

baseline=/sciclone/pscr/hwang07/bfloat_exp/sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_baseline

cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
./test *_GPU.txt $baseline/polybench/$benchmark/*_GPU.txt
cd ..
done
cd ..

cd polybench
for benchmark in 2DCONV_EMBOSS 2DCONV_BLUR
do
cd $benchmark
./cmp_image *_GPU.bmp $baseline/polybench/$benchmark/*_GPU.bmp
cd ..
done
cd ..

cd CUDA
for benchmark in SCP FWT LPS BlackScholes SLA TRA CONS
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
for benchmark in srad
do
cd $benchmark
./cmp_image *.pgm $baseline/axbench/$benchmark/*.pgm
cd ..
done
cd ..
