#!/bin/sh

########################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_dynamic_remove

#cd $1
cd $mother_dir

for i in $(ls -d *)
#for i in 
do

cd $i


cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
ln -s /sciclone/data10/hwang07/GPU_RESEARCH/amc/test .
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

cd ..

done