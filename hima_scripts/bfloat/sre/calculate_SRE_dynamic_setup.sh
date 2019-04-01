#!/bin/sh

########################################
mother_dir=/sciclone/pscr/hwang07/bfloat_exp

#cd $1
cd $mother_dir

#for i in $(ls -d *)
for i in sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_baseline sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_removeall
do

cd $i


cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/test .
cd ..
done
cd ..

cd polybench
for benchmark in 2DCONV_EMBOSS 2DCONV_BLUR
do
cd $benchmark
ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/cmp_image .
cd ..
done
cd ..

cd CUDA
for benchmark in SCP FWT LPS BlackScholes SLA TRA CONS
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
for benchmark in srad
do
cd $benchmark
ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/cmp_image .
cd ..
done
cd ..

cd ..

done