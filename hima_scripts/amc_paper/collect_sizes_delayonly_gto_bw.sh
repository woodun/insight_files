#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/sizes_delayonly_gto_bw.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/sizes_delayonly

for statistics in 'bw_util='
do

#specify your config path in stor1
for configs_stor1 in AMC_size16_delayonly16_gto48 AMC_size16_delayonly32_gto48 AMC_size16_delayonly64_gto48 AMC_size16_delayonly128_gto48 AMC_size16_delayonly256_gto48 AMC_size16_delayonly512_gto48 AMC_size32_delayonly16_gto48 AMC_size32_delayonly32_gto48 AMC_size32_delayonly64_gto48 AMC_size32_delayonly128_gto48 AMC_size32_delayonly256_gto48 AMC_size32_delayonly512_gto48 AMC_size64_delayonly16_gto48 AMC_size64_delayonly32_gto48 AMC_size64_delayonly64_gto48 AMC_size64_delayonly128_gto48 AMC_size64_delayonly256_gto48 AMC_size64_delayonly512_gto48 AMC_size128_delayonly16_gto48 AMC_size128_delayonly32_gto48 AMC_size128_delayonly64_gto48 AMC_size128_delayonly128_gto48 AMC_size128_delayonly256_gto48 AMC_size128_delayonly512_gto48 AMC_sizeinf_delayonly16_gto48 AMC_sizeinf_delayonly32_gto48 AMC_sizeinf_delayonly64_gto48 AMC_sizeinf_delayonly128_gto48 AMC_sizeinf_delayonly256_gto48 AMC_sizeinf_delayonly512_gto48
do

printf "%s\r\n" $configs_stor1 >> $output

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV 2MM 3MM BICG 2DCONV 3DCONV GEMM FDTD-2D
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
