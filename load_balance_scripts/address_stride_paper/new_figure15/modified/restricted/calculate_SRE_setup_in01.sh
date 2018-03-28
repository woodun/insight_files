#!/bin/sh

########################################

#cd $1
cd /stor2/hwang07/restricted_asap/

#for i in $(ls -d *)
for i in coverage5_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_gto48_wattch1 coverage15_dynamic_tsp_nopc_size8_gto48_wattch1 coverage20_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_RR48 coverage20_dynamic_tsp_nopc_size8_RR48 coverage5_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_gto48_wattch1 coverage15_dynamic_osp_nopc_size8_gto48_wattch1 coverage20_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_RR48 coverage20_dynamic_osp_nopc_size8_RR48
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


cd ..

done