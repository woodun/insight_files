#!/bin/sh

#specify your output file
output=/stor1/hwang07/amc_collection/profile_overall_gto.txt
mother_dir=/stor1/hwang07/AMC_profile

for statistics in 'overall 32 and more all:'
do

#############################
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do

#specify your config path in stor1
for configs_stor1 in AMC_profile_size16_gto48 AMC_profile_size32_gto48 AMC_profile_size64_gto48 AMC_profile_size128_gto48 AMC_profile_size256_gto48 AMC_profile_size512_gto48 AMC_profile_sizeinf_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
cd $benchmark
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
done

printf "\r\n" >> $output
done
#############################

#############################
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do

#specify your config path in stor1
for configs_stor1 in AMC_profile_size16_gto48 AMC_profile_size32_gto48 AMC_profile_size64_gto48 AMC_profile_size128_gto48 AMC_profile_size256_gto48 AMC_profile_size512_gto48 AMC_profile_sizeinf_gto48
do

#figures: JPEG RAY srad_v1 histo
#7
cd $mother_dir
cd $configs_stor1
cd CUDA

cd $benchmark
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
done

printf "\r\n" >> $output
done
#############################

done
