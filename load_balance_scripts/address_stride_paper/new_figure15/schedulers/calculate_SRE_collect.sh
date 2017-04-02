#!/bin/sh

########################################input mother dir path
output=/stor1/hwang07/paper_collection/coverage10_RE.txt
token='RE:'

#cd $1
cd /stor1/hwang07/final_accurate_osp/

#for i in $(ls -d *)
for i in 
do

cd $i


cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG SYR2K
do
cd $benchmark
grep -o "$token[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$token[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..

cd CUDA
for benchmark in TRA LPS SLA
do
cd $benchmark
grep -o "$token[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$token[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..


cd ..

printf "\r\n" >> $output

done