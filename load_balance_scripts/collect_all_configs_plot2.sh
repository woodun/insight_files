#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/plot2/plot2_125gto48
#cd tsp_address_exp_gtoswl48_profile
#sh setup_ALL.sh approx_125coverage_gtoswl48
###################################################################################

#specify your config path in stor1
configs_stor11=/stor1/hwang07/approx/approx_125coverage_gtoswl48
configs_stor12=/stor1/hwang07/approx/approx_25coverage_gtoswl48

configs_stor23=/stor1/hwang07/approx/approx_50coverage_gtoswl48
configs_stor24=/stor1/hwang07/approx/approx_75coverage_gtoswl48

configs_stor31=/stor1/hwang07/plot2/plot2_125gto48
configs_stor32=/stor1/hwang07/plot2/plot2_25gto48
configs_stor33=/stor1/hwang07/plot2/plot2_50gto48
configs_stor34=/stor1/hwang07/plot2/plot2_50gto48

#specify your output file
output=/stor1/hwang07/plot2.txt

for configs_stor1 in /stor1/hwang07/approx/approx_125coverage_gtoswl48 /stor1/hwang07/approx/approx_25coverage_gtoswl48 /stor1/hwang07/approx/approx_50coverage_gtoswl48 /stor1/hwang07/approx/approx_75coverage_gtoswl48
do

cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM 
do
cd $benchmark
pwd
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
cd ..
done

cd $configs_stor1
cd shoc
for benchmark in Triad
do
cd $benchmark
pwd
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
cd ..
done

cd $configs_stor1
cd rodinia
for benchmark in srad_v1
do
cd $benchmark
pwd
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
cd ..
done

cd $configs_stor1
cd parboil
for benchmark in histo
do
cd $benchmark
pwd
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
cd ..
done

printf "\r\n" >> $output

done

#cd $configs_stor1
#cd CUDA
#for benchmark in TRA SCP CONS FWT BlackScholes LPS KMN
#do
#cd $benchmark
#pwd
#grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
#cd ..
#done
######################################################################################################################################################################


for configs_stor1 in /stor1/hwang07/approx/approx_125coverage_gtoswl48 /stor1/hwang07/approx/approx_25coverage_gtoswl48 /stor1/hwang07/approx/approx_50coverage_gtoswl48 /stor1/hwang07/approx/approx_75coverage_gtoswl48
do

cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM 
do
cd $benchmark
pwd
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
cd ..
done

cd $configs_stor1
cd shoc
for benchmark in Triad
do
cd $benchmark
pwd
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
cd ..
done

cd $configs_stor1
cd rodinia
for benchmark in srad_v1
do
cd $benchmark
pwd
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
cd ..
done

cd $configs_stor1
cd parboil
for benchmark in histo
do
cd $benchmark
pwd
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
cd ..
done

printf "\r\n" >> $output

done
######################################################################################################################################################################
