#!/bin/sh

########################################

cd /stor2/hwang07/modified_tsp

#for i in $(ls -d *)
for i in coverage5_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage5_gto48 wp6_tsp_coverage5_gto48 coverage10_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp6_tsp_coverage10_gto48 coverage15_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage15_gto48 wp6_tsp_coverage15_gto48 coverage20_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage20_gto48 wp6_tsp_coverage20_gto48 coverage10_dynamic_tsp_nopc_size8_RR48 wp0_tsp_coverage10_RR48 wp6_tsp_coverage10_RR48 coverage20_dynamic_tsp_nopc_size8_RR48 wp0_tsp_coverage20_RR48 wp6_tsp_coverage20_RR48
do

cd $i

#GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
cd polybench
for benchmark in 
do
cd $benchmark
qsub calculate_RMSE_appbase_in02.pbs
cd ..
done
cd ..

#SLA
cd CUDA
for benchmark in TRA CONS SCP
do
cd $benchmark
qsub calculate_RMSE_appbase_in02.pbs
cd ..
done
cd ..


cd ..

printf "\r\n" >> $output

done
