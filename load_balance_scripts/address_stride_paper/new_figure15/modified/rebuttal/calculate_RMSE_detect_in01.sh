#!/bin/sh

########################################
output=/stor2/hwang07/RMSE_re.txt

#cd $1
cd /stor2/hwang07/modified_tsp/

#for i in $(ls -d *)
for i in coverage5_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage5_gto48 wp6_tsp_coverage5_gto48 coverage10_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp6_tsp_coverage10_gto48 coverage15_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage15_gto48 wp6_tsp_coverage15_gto48 coverage20_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage20_gto48 wp6_tsp_coverage20_gto48 coverage10_dynamic_tsp_nopc_size8_RR48 wp0_tsp_coverage10_RR48 wp6_tsp_coverage10_RR48 coverage20_dynamic_tsp_nopc_size8_RR48 wp0_tsp_coverage20_RR48 wp6_tsp_coverage20_RR48
do

cd $i


cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
if [[ -s RMSE.txt ]]; then
pwd | xargs printf "%s "
echo 'ok'
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done
cd ..

#TRA CONS SCP
cd CUDA
for benchmark in SLA
do
cd $benchmark
if [[ -s RMSE.txt ]]; then
pwd | xargs printf "%s "
echo 'ok'
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done
cd ..


cd ..

done




cd /stor1/hwang07/modified_osp/

#for i in $(ls -d *)
for i in coverage5_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage5_gto48 wp6_osp_coverage5_gto48 coverage10_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage10_gto48 wp6_osp_coverage10_gto48 coverage15_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage15_gto48 wp6_osp_coverage15_gto48 coverage20_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage20_gto48 wp6_osp_coverage20_gto48 coverage10_dynamic_osp_nopc_size8_RR48 wp0_osp_coverage10_RR48 wp6_osp_coverage10_RR48 coverage20_dynamic_osp_nopc_size8_RR48 wp0_osp_coverage20_RR48 wp6_osp_coverage20_RR48
do

cd $i


cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
if [[ -s RMSE.txt ]]; then
pwd | xargs printf "%s "
echo 'ok'
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done
cd ..

#TRA CONS SCP
cd CUDA
for benchmark in SLA
do
cd $benchmark
if [[ -s RMSE.txt ]]; then
pwd | xargs printf "%s "
echo 'ok'
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done
cd ..


cd ..

done


