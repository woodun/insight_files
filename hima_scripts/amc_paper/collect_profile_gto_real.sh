#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/profile_gto_real.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/profile

for statistics in 'real case 32 all:'
do

#specify your config path in stor1

for benchmark in GESUMMV 2MM 3MM BICG 2DCONV 3DCONV GEMM FDTD-2D
do

for configs_stor1 in AMC_profile_size16_gto48 AMC_profile_size32_gto48 AMC_profile_size64_gto48 AMC_profile_size128_gto48 AMC_profile_sizeinf_gto48
do

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


for benchmark in TRA SCP CONS FWT LPS BlackScholes
do

for configs_stor1 in AMC_profile_size16_gto48 AMC_profile_size32_gto48 AMC_profile_size64_gto48 AMC_profile_size128_gto48 AMC_profile_sizeinf_gto48
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
######################################################################################################################################

done
