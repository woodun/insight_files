#!/bin/sh

########################################input mother dir path
output=/stor1/hwang07/paper_collection/modified_tsp_coverageS_RMSE.txt
statistics='RE:'

#cd $1
cd /stor2/hwang07/modified_tsp

#for i in $(ls -d *)
for i in coverage5_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage5_gto48 wp6_tsp_coverage5_gto48 coverage10_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp6_tsp_coverage10_gto48 coverage15_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage15_gto48 wp6_tsp_coverage15_gto48 coverage20_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage20_gto48 wp6_tsp_coverage20_gto48 coverage10_dynamic_tsp_nopc_size8_RR48 wp0_tsp_coverage10_RR48 wp6_tsp_coverage10_RR48 coverage20_dynamic_tsp_nopc_size8_RR48 wp0_tsp_coverage20_RR48 wp6_tsp_coverage20_RR48
do

cd $i


cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
grep -o "(.*)" RMSE.txt | tail -1 | sed -e "s/(//g" | sed -e "s/)//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..

cd CUDA
for benchmark in SLA TRA CONS SCP
do
cd $benchmark
grep -o "(.*)" RMSE.txt | tail -1 | sed -e "s/(//g" | sed -e "s/)//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..


cd ..

printf "\r\n" >> $output

done