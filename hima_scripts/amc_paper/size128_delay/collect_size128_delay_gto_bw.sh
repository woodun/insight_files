#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/size128_delay_gto_bw.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/sizes_delay

for statistics in 'bw_util='
do

#############################
for benchmark in GESUMMV 2MM 3MM BICG 2DCONV 3DCONV GEMM
do

#specify your config path in stor1
for configs_stor1 in AMC_size128_delay16_gto48 AMC_size128_delay32_gto48 AMC_size128_delay64_gto48 AMC_size128_delay128_gto48 AMC_size128_delay256_gto48 AMC_size128_delay512_gto48
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
for configs_stor1 in AMC_size128_delay16_gto48 AMC_size128_delay32_gto48 AMC_size128_delay64_gto48 AMC_size128_delay128_gto48 AMC_size128_delay256_gto48 AMC_size128_delay512_gto48
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