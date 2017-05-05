#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/sizes_delay_gto_act_num.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/sizes_delay

for statistics in 'overall activations all:'
do

#specify your config path in stor1
for configs_stor1 in AMC_size16_delay16_gto48 AMC_size16_delay32_gto48 AMC_size16_delay64_gto48 AMC_size16_delay128_gto48 AMC_size16_delay256_gto48 AMC_size16_delay512_gto48 AMC_size32_delay16_gto48 AMC_size32_delay32_gto48 AMC_size32_delay64_gto48 AMC_size32_delay128_gto48 AMC_size32_delay256_gto48 AMC_size32_delay512_gto48 AMC_size64_delay16_gto48 AMC_size64_delay32_gto48 AMC_size64_delay64_gto48 AMC_size64_delay128_gto48 AMC_size64_delay256_gto48 AMC_size64_delay512_gto48 AMC_size128_delay16_gto48 AMC_size128_delay32_gto48 AMC_size128_delay64_gto48 AMC_size128_delay128_gto48 AMC_size128_delay256_gto48 AMC_size128_delay512_gto48 AMC_sizeinf_delay16_gto48 AMC_sizeinf_delay32_gto48 AMC_sizeinf_delay64_gto48 AMC_sizeinf_delay128_gto48 AMC_sizeinf_delay256_gto48 AMC_sizeinf_delay512_gto48
do

printf "%s\r\n" $configs_stor1 >> $output

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV 2MM 3MM BICG 2DCONV 3DCONV GEMM FDTD-2D
do
cd $benchmark
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
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
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
