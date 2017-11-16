#!/bin/sh

########################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_dynamic_all

#cd $1
cd $mother_dir

for i in $(ls -d *)
#for i in 
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