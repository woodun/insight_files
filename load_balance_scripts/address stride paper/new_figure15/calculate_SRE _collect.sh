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
grep -o "RE:[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/RE:[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..

cd CUDA
for benchmark in TRA LPS SLA
do
cd $benchmark
grep -o "RE:[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/RE:[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..


cd ..

done