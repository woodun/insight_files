#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/profile_sizes_overall.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/profile_sizes

for statistics in 'overall 128 and more all:'
do

#############################
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do

#specify your config path in stor1
for configs_stor1 in delay0_remove0_e0_r0_size16_gto48_p8192_w8192 delay0_remove0_e0_r0_size32_gto48_p8192_w8192 delay0_remove0_e0_r0_size64_gto48_p8192_w8192 delay0_remove0_e0_r0_size128_gto48_p8192_w8192 delay0_remove0_e0_r0_size256_gto48_p8192_w8192 delay0_remove0_e0_r0_size512_gto48_p8192_w8192 delay0_remove0_e0_r0_size1024_gto48_p8192_w8192 delay0_remove0_e0_r0_sizeinf_gto48_p8192_w8192
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
cd $benchmark
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
done

done
#############################

#############################
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do

#specify your config path in stor1
for configs_stor1 in delay0_remove0_e0_r0_size16_gto48_p8192_w8192 delay0_remove0_e0_r0_size32_gto48_p8192_w8192 delay0_remove0_e0_r0_size64_gto48_p8192_w8192 delay0_remove0_e0_r0_size128_gto48_p8192_w8192 delay0_remove0_e0_r0_size256_gto48_p8192_w8192 delay0_remove0_e0_r0_size512_gto48_p8192_w8192 delay0_remove0_e0_r0_size1024_gto48_p8192_w8192 delay0_remove0_e0_r0_sizeinf_gto48_p8192_w8192
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

done
#############################

done
