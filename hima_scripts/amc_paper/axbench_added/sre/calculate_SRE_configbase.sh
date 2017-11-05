#!/bin/sh

cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV GEMM
do
cd $benchmark
./test *_GPU.txt *_CPU.txt
cd ..
done
cd ..

cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
./test *_GPU.txt *_CPU.txt
cd ..
done

cd RAY
./cmp_image outputFinal.bmp /sciclone/data10/hwang07/GPU_RESEARCH/amc/outputFinal.bmp
cd ..

cd ..

cd axbench
for benchmark in blackscholes convolution inversek2j jmeint newton-raph
do
cd $benchmark
./test *.data /sciclone/data10/hwang07/GPU_RESEARCH/amc/queue_sizes/delay0_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64/axbench/$benchmark/*.data
cd ..
done
cd ..

cd axbench
for benchmark in laplacian meanfilter sobel srad
do
cd $benchmark
./cmp_image *.pgm /sciclone/data10/hwang07/GPU_RESEARCH/amc/queue_sizes/delay0_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64/axbench/$benchmark/*.pgm
cd ..
done
cd ..
