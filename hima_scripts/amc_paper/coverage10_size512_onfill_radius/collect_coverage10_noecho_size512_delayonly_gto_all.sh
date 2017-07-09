#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/coverage10_noecho_delayonly_sizes512.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/coverage10_noecho_sizes_delayonly

for statistics in 'overall accesses all:' 'overall activations all:' 'bw_util=' 'dram_eff=' 'gpu_tot_ipc =' 'echo in delayonly queue all:' 'number of global reads only activations:' 'accesses from global reads only activations:' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate =' 'removed all:' 'delayonly queue full all:' 'row_hit_0 all:' 'actual coverage all:'
do

printf "%s\r\n" $statistics >> $output

#############################
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do

#specify your config path in stor1
for configs_stor1 in coverage10_noecho_size512_delayonly16_gto48 coverage10_noecho_size512_delayonly32_gto48 coverage10_noecho_size512_delayonly64_gto48 coverage10_noecho_size512_delayonly128_gto48 coverage10_noecho_size512_delayonly256_gto48 coverage10_noecho_size512_delayonly512_gto48 coverage10_noecho_size512_delayonly1024_gto48 coverage10_noecho_size512_delayonly2048_gto48 coverage10_noecho_size512_delayonly4096_gto48
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
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do

#specify your config path in stor1
for configs_stor1 in coverage10_noecho_size512_delayonly16_gto48 coverage10_noecho_size512_delayonly32_gto48 coverage10_noecho_size512_delayonly64_gto48 coverage10_noecho_size512_delayonly128_gto48 coverage10_noecho_size512_delayonly256_gto48 coverage10_noecho_size512_delayonly512_gto48 coverage10_noecho_size512_delayonly1024_gto48 coverage10_noecho_size512_delayonly2048_gto48 coverage10_noecho_size512_delayonly4096_gto48
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
