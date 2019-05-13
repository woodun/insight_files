#!/bin/sh

#modified application folder: /sciclone/data10/hwang07/applications_modified
baseline=/sciclone/pscr/hwang07/dsn_amc/delay0_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64

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
