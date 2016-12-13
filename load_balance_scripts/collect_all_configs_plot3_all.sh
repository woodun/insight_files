#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/plot2/plot2_125gto48
#cd tsp_address_exp_gtoswl48_profile
#sh setup_ALL.sh approx_125coverage_gtoswl48
###################################################################################

#specify your config path in stor1

#specify your output file
output=/stor1/hwang07/collect_plot3.txt

for configs_stor1 in /stor1/hwang07/plot3/plot3_gto48 /stor2/hwang07/plot3/plot3_lrr48 /stor2/hwang07/plot3/plot3_RR48
do

cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM
do
cd $benchmark
pwd
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s0 " >> $output
cd ..
done

cd $configs_stor1
cd shoc
for benchmark in Triad
do
cd $benchmark
pwd
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s0 " >> $output
cd ..
done

cd $configs_stor1
cd rodinia
for benchmark in srad_v1
do
cd $benchmark
pwd
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s0 " >> $output
cd ..
done

cd $configs_stor1
cd parboil
for benchmark in histo
do
cd $benchmark
pwd
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s0 " >> $output
cd ..
done

cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT BlackScholes LPS KMN 
do
cd $benchmark
pwd
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s0 " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################################################

for configs_stor1 in /stor1/hwang07/plot3/plot3_gto48 /stor2/hwang07/plot3/plot3_lrr48 /stor2/hwang07/plot3/plot3_RR48
do

cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM
do
cd $benchmark
pwd
grep -o "coverage_any_percent:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "%s0 " >> $output
cd ..
done

cd $configs_stor1
cd shoc
for benchmark in Triad
do
cd $benchmark
pwd
grep -o "coverage_any_percent:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "%s0 " >> $output
cd ..
done

cd $configs_stor1
cd rodinia
for benchmark in srad_v1
do
cd $benchmark
pwd
grep -o "coverage_any_percent:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "%s0 " >> $output
cd ..
done

cd $configs_stor1
cd parboil
for benchmark in histo
do
cd $benchmark
pwd
grep -o "coverage_any_percent:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "%s0 " >> $output
cd ..
done

cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT BlackScholes LPS KMN
do
cd $benchmark
pwd
grep -o "coverage_any_percent:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "%s0 " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################################################

for configs_stor1 in /stor1/hwang07/plot3/plot3_gto48 /stor2/hwang07/plot3/plot3_lrr48 /stor2/hwang07/plot3/plot3_RR48
do

cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM
do
cd $benchmark
pwd
grep -o "evict_count_all:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/evict_count_all://g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd shoc
for benchmark in Triad
do
cd $benchmark
pwd
grep -o "evict_count_all:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/evict_count_all://g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd rodinia
for benchmark in srad_v1
do
cd $benchmark
pwd
grep -o "evict_count_all:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/evict_count_all://g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd parboil
for benchmark in histo
do
cd $benchmark
pwd
grep -o "evict_count_all:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/evict_count_all://g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT BlackScholes LPS KMN 
do
cd $benchmark
pwd
grep -o "evict_count_all:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/evict_count_all://g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################################################

for configs_stor1 in /stor1/hwang07/plot3/plot3_gto48 /stor2/hwang07/plot3/plot3_lrr48 /stor2/hwang07/plot3/plot3_RR48
do

cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM
do
cd $benchmark
pwd
grep -o "update_count_all:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/update_count_all://g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd shoc
for benchmark in Triad
do
cd $benchmark
pwd
grep -o "update_count_all:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/update_count_all://g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd rodinia
for benchmark in srad_v1
do
cd $benchmark
pwd
grep -o "update_count_all:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/update_count_all://g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd parboil
for benchmark in histo
do
cd $benchmark
pwd
grep -o "update_count_all:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/update_count_all://g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT BlackScholes LPS KMN 
do
cd $benchmark
pwd
grep -o "update_count_all:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/update_count_all://g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################################################

for configs_stor1 in /stor1/hwang07/plot3/plot3_gto48 /stor2/hwang07/plot3/plot3_lrr48 /stor2/hwang07/plot3/plot3_RR48
do

cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM
do
cd $benchmark
pwd
grep "ACT_percRelativeError_skipzero" output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero//g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd shoc
for benchmark in Triad
do
cd $benchmark
pwd
grep "ACT_percRelativeError_skipzero" output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero//g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd rodinia
for benchmark in srad_v1
do
cd $benchmark
pwd
grep "ACT_percRelativeError_skipzero" output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero//g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd parboil
for benchmark in histo
do
cd $benchmark
pwd
grep "ACT_percRelativeError_skipzero" output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero//g" | xargs printf "0%s " >> $output
cd ..
done

cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT BlackScholes LPS KMN
do
cd $benchmark
pwd
grep "ACT_percRelativeError_skipzero" output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
