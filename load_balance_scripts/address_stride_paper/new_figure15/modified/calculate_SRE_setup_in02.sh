#!/bin/sh

########################################

#cd $1
cd /stor2/hwang07/modified_tsp/

for i in $(ls -d *)
#for i in 
do

cd $i


cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV ATAX BICG
do
cd $benchmark
ln -s /stor1/hwang07/test/test .
cd ..
done
cd ..

cd CUDA
for benchmark in SLA TRA CONS SCP LPS
do
cd $benchmark
ln -s /stor1/hwang07/test/test .
cd ..
done
cd ..

cd shoc
for benchmark in Triad
do
cd $benchmark
ln -s /stor1/hwang07/test/test .
cd ..
done
cd ..

cd ..

done
