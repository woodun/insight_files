#!/bin/sh

########################################input mother dir path
output=/stor1/hwang07/paper_collection/output_sizes.txt
token='all number:'

#cd $1
cd /stor1/hwang07/coverage_dynamic_nopc_S/

#for i in $(ls -d *)
for i in coverage25_dynamic_nopc_gto48 coverage50_dynamic_nopc_lrr48 coverage75_dynamic_nopc_gto48  coverage25_dynamic_nopc_lrr48 coverage50_dynamic_nopc_gto48 coverage75_dynamic_nopc_lrr48 coverage25_dynamic_nopc_RR48 coverage50_dynamic_nopc_RR48 coverage75_dynamic_nopc_RR48
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