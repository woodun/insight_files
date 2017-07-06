#!/bin/sh

########################################

#cd $1
cd /stor2/hwang07/modified_tsp/

for i in $(ls -d *)
#for i in 
do

cd $i


cd polybench
for benchmark in 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN 2DCONV 2MM 3DCONV 3MM ATAX BICG FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK
do
cd $benchmark
ln -s /stor1/hwang07/test/test .
cd ..
done
cd ..

cd CUDA
for benchmark in JPEG_ENCODE JPEG_DECODE RAY BlackScholes CONS SCP SLA TRA
do
cd $benchmark
ln -s /stor1/hwang07/test/test .
cd ..
done
cd ..


cd ..

done