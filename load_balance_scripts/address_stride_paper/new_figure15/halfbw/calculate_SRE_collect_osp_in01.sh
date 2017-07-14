#!/bin/sh

########################################input mother dir path
output=/stor1/hwang07/paper_collection/halfbw_osp_RE.txt
statistics='RE:'

#cd $1
cd /stor1/hwang07/halfbw_osp

#for i in $(ls -d *)
for i in halfbw_coverage5_dynamic_osp_nopc_size8_gto48 halfbw_coverage10_dynamic_osp_nopc_size8_gto48 halfbw_coverage15_dynamic_osp_nopc_size8_gto48 halfbw_coverage20_dynamic_osp_nopc_size8_gto48
do

cd $i


cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..

cd CUDA
for benchmark in SLA TRA CONS SCP
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..


cd ..

printf "\r\n" >> $output

done