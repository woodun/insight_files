#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/coverage10_noecho_delay_size512_original.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/coverage10_noecho_sizes_delay

for statistics in 'real case 32 all:'
do

printf "%s\r\n" $statistics >> $output

#############################
for benchmark in GESUMMV 2MM 3MM BICG 2DCONV 3DCONV GEMM
do

printf "%s\r\n" $benchmark >> $output

#specify your config path in stor1
for configs_stor1 in coverage10_noecho_size512_delay16_gto48 coverage10_noecho_size512_delay32_gto48 coverage10_noecho_size512_delay64_gto48 coverage10_noecho_size512_delay128_gto48 coverage10_noecho_size512_delay256_gto48 coverage10_noecho_size512_delay512_gto48 coverage10_noecho_size512_delay1024_gto48 coverage10_noecho_size512_delay2048_gto48 coverage10_noecho_size512_delay4096_gto48 coverage10_noecho_size512_delay8192_gto48 coverage10_noecho_size512_delay16384_gto48
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
for configs_stor1 in coverage10_noecho_size512_delay16_gto48 coverage10_noecho_size512_delay32_gto48 coverage10_noecho_size512_delay64_gto48 coverage10_noecho_size512_delay128_gto48 coverage10_noecho_size512_delay256_gto48 coverage10_noecho_size512_delay512_gto48 coverage10_noecho_size512_delay1024_gto48 coverage10_noecho_size512_delay2048_gto48 coverage10_noecho_size512_delay4096_gto48 coverage10_noecho_size512_delay8192_gto48 coverage10_noecho_size512_delay16384_gto48
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
