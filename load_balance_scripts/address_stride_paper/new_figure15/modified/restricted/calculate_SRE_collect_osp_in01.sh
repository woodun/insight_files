#!/bin/sh

########################################input mother dir path
output=/stor1/hwang07/paper_collection/restricted_RE.txt
statistics='RE:'

#cd $1
cd /stor2/hwang07/restricted_asap

#for i in $(ls -d *)
for i in coverage5_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_gto48_wattch1 coverage15_dynamic_tsp_nopc_size8_gto48_wattch1 coverage20_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_RR48 coverage20_dynamic_tsp_nopc_size8_RR48 coverage5_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_gto48_wattch1 coverage15_dynamic_osp_nopc_size8_gto48_wattch1 coverage20_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_RR48 coverage20_dynamic_osp_nopc_size8_RR48
do

cd $i


cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR ATAX BICG 3DCONV
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..

cd CUDA
for benchmark in SLA SCP CONS LPS
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..

cd ..

printf "\r\n" >> $output

done