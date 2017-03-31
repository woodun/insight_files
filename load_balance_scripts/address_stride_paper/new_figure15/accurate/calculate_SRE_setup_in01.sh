#!/bin/sh

########################################

#cd $1
cd /stor1/hwang07/final_accurate_osp/

for i in $(ls -d *)
#for i in 
do

cd $i


cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG SYR2K
do
cd $benchmark
ln -s /stor1/hwang07/test/test .
cd ..
done
cd ..

cd CUDA
for benchmark in TRA LPS SLA
do
cd $benchmark
ln -s /stor1/hwang07/test/test .
cd ..
done
cd ..


cd ..

done