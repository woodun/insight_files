#!/bin/sh

########################################input mother dir path
output=/stor1/hwang07/paper_collection/dim_modified_osp_coverage10_RE.txt
token='RE:'

#cd $1
cd /stor1/hwang07/dim_modified_osp

#for i in $(ls -d *)
for i in coverage10_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage10_gto48 wp6_osp_coverage10_gto48
do

cd $i


cd polybench
for benchmark in ATAX BICG GESUMMV GRAMSCHM MVT SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV
do
cd $benchmark
grep -o "$token[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$token[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..

cd CUDA
for benchmark in SLA TRA CONS SCP
do
cd $benchmark
grep -o "$token[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$token[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..


cd ..

printf "\r\n" >> $output

done