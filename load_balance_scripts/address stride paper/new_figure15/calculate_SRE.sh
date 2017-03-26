#!/bin/sh

########################################input mother dir path
output=/stor1/hwang07/paper_collection/RE.txt

#cd $1
cd 

#for i in $(ls -d *)
for i in 
do

cd $i


cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG SYR2K
do
cd $benchmark
./test *_GPU.txt *_CPU.txt
cd ..
done
cd ..

cd CUDA
for benchmark in TRA LPS SLA
do
cd $benchmark
./test *_GPU.txt *_CPU.txt
cd ..
done
cd ..


cd ..

done