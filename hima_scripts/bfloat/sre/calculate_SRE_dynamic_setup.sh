#!/bin/sh

########################################delayA_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32
mother_dir=/sciclone/pscr/hwang07/dsn_amc

#cd $1
cd $mother_dir

#for i in $(ls -d *)
for i in sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_baseline sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_removeall
do

cd $i


cd polybench
for benchmark in GESUMMV MVT 2MM 3MM ATAX BICG 3DCONV GEMM
do
cd $benchmark
ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/test .
cd ..
done
cd ..

cd CUDA
for benchmark in TRA SCP CONS FWT LPS SLA
do
cd $benchmark
ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/test .
cd ..
done

cd RAY
ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/cmp_image .
cd ..

cd ..

cd axbench
for benchmark in blackscholes convolution inversek2j jmeint newton-raph
do
cd $benchmark
ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/test .
cd ..
done
cd ..

cd axbench
for benchmark in laplacian meanfilter sobel srad
do
cd $benchmark
ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/cmp_image .
cd ..
done
cd ..

cd ..

done