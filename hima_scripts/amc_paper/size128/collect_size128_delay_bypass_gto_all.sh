#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/size128_delay_bypass_gto_all.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delay_bypass

for statistics in 'overall accesses all:' 'overall activations all:' 'bw_util=' 'echo in delay queue all:' 'number of global reads only activations:' 'accesses from global reads only activations:' 'gpu_tot_ipc =' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate =' 'removed all:' 'delay queue full all:'
do

printf "%s\r\n" $statistics >> $output

#############################
for benchmark in GESUMMV 2MM 3MM BICG 2DCONV 3DCONV GEMM
do

#specify your config path in stor1
for configs_stor1 in AMC_size128_delay16_bypass_gto48 AMC_size128_delay32_bypass_gto48 AMC_size128_delay64_bypass_gto48 AMC_size128_delay128_bypass_gto48 AMC_size128_delay256_bypass_gto48 AMC_size128_delay512_bypass_gto48 AMC_size128_delay1024_bypass_gto48
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
for configs_stor1 in AMC_size128_delay16_bypass_gto48 AMC_size128_delay32_bypass_gto48 AMC_size128_delay64_bypass_gto48 AMC_size128_delay128_bypass_gto48 AMC_size128_delay256_bypass_gto48 AMC_size128_delay512_bypass_gto48 AMC_size128_delay1024_bypass_gto48
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
