#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/coverage10_noecho_delayonly_size512_original.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/coverage10_noecho_sizes_delayonly

for statistics in 'real case 32 all:'
do

printf "%s\r\n" $statistics >> $output

#############################
for benchmark in GESUMMV 2MM 3MM BICG 2DCONV 3DCONV GEMM
do

printf "%s\r\n" $benchmark >> $output

#specify your config path in stor1
for configs_stor1 in coverage10_noecho_size512_delayonly16_gto48 coverage10_noecho_size512_delayonly32_gto48 coverage10_noecho_size512_delayonly64_gto48 coverage10_noecho_size512_delayonly128_gto48 coverage10_noecho_size512_delayonly256_gto48 coverage10_noecho_size512_delayonly512_gto48 coverage10_noecho_size512_delayonly1024_gto48 coverage10_noecho_size512_delayonly2048_gto48 coverage10_noecho_size512_delayonly4096_gto48 coverage10_noecho_size512_delayonly8192_gto48 coverage10_noecho_size512_delayonly16384_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
cd $benchmark
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
cd ..
done

printf "\r\n" >> $output
done
#############################

#############################
for benchmark in SCP CONS FWT LPS BlackScholes
do

printf "%s\r\n" $benchmark >> $output

#specify your config path in stor1
for configs_stor1 in coverage10_noecho_size512_delayonly16_gto48 coverage10_noecho_size512_delayonly32_gto48 coverage10_noecho_size512_delayonly64_gto48 coverage10_noecho_size512_delayonly128_gto48 coverage10_noecho_size512_delayonly256_gto48 coverage10_noecho_size512_delayonly512_gto48 coverage10_noecho_size512_delayonly1024_gto48 coverage10_noecho_size512_delayonly2048_gto48 coverage10_noecho_size512_delayonly4096_gto48 coverage10_noecho_size512_delayonly8192_gto48 coverage10_noecho_size512_delayonly16384_gto48
do

#figures: JPEG RAY srad_v1 histo
#7
cd $mother_dir
cd $configs_stor1
cd CUDA

cd $benchmark
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
cd ..
done

printf "\r\n" >> $output
done
#############################

done
