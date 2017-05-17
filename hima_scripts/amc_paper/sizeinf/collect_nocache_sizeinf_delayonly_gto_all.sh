#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/nocache_sizes_delayonly_all.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/nocache_sizes_delayonly

for statistics in 'overall accesses all:' 'overall activations all:' 'bw_util=' 'echo in delay queue all:' 'number of global reads only activations:' 'accesses from global reads only activations:' 'gpu_tot_ipc =' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate =' 'removed all:' 'delay queue full all:'
do

printf "%s\r\n" $statistics >> $output

#############################
for benchmark in GESUMMV 2MM 3MM BICG 2DCONV 3DCONV GEMM
do

#specify your config path in stor1
for configs_stor1 in AMC_nocache_sizeinf_delayonly16_gto48 AMC_nocache_sizeinf_delayonly32_gto48 AMC_nocache_sizeinf_delayonly64_gto48 AMC_nocache_sizeinf_delayonly128_gto48 AMC_nocache_sizeinf_delayonly256_gto48 AMC_nocache_sizeinf_delayonly512_gto48 AMC_nocache_sizeinf_delayonly1024_gto48 AMC_nocache_sizeinf_delayonly2048_gto48 AMC_nocache_sizeinf_delayonly4096_gto48 AMC_nocache_sizeinf_delayonly8192_gto48 AMC_nocache_sizeinf_delayonly16384_gto48 AMC_nocache_sizeinf_delayonly32768_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
#############################

#############################
for benchmark in SCP CONS FWT LPS BlackScholes
do

#specify your config path in stor1
for configs_stor1 in AMC_nocache_sizeinf_delayonly16_gto48 AMC_nocache_sizeinf_delayonly32_gto48 AMC_nocache_sizeinf_delayonly64_gto48 AMC_nocache_sizeinf_delayonly128_gto48 AMC_nocache_sizeinf_delayonly256_gto48 AMC_nocache_sizeinf_delayonly512_gto48 AMC_nocache_sizeinf_delayonly1024_gto48 AMC_nocache_sizeinf_delayonly2048_gto48 AMC_nocache_sizeinf_delayonly4096_gto48 AMC_nocache_sizeinf_delayonly8192_gto48 AMC_nocache_sizeinf_delayonly16384_gto48 AMC_nocache_sizeinf_delayonly32768_gto48
do

#figures: JPEG RAY srad_v1 histo
#7
cd $mother_dir
cd $configs_stor1
cd CUDA

cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
#############################

done
