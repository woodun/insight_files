#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/profile_sizes_profile.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_profile

#grep -o "#### temp_bwutil:[ ]*[-eE\+0-9\.]*" profile_output.txt | sed -e "s/#### temp_bwutil:[ ]*//g" | xargs printf "%s "
#grep -o "temp_bwutil:[ ]*[-eE\+0-9\.]*" profile_output.txt | sed -e "s/temp_bwutil:[ ]*//g" | xargs printf "%s "
for statistics in '#### temp_bwutil:'
do

#############################
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do

#specify your config path in stor1
for configs_stor1 in delay0_remove0_e0_r0_size512_gto48_p4096_w4096 delay0_remove0_e0_r0_size512_gto48_p8192_w8192 delay0_remove0_e0_r0_size512_gto48_p16384_w16384 delay0_remove0_e0_r0_size512_gto48_p32768_w32768
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" profile_output.txt | sed -e "s/$statistics[ ]*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
cd ..
done

done
#############################

#############################
for benchmark in SCP FWT LPS BlackScholes SLA TRA CONS RAY
do

#specify your config path in stor1
for configs_stor1 in delay0_remove0_e0_r0_size512_gto48_p4096_w4096 delay0_remove0_e0_r0_size512_gto48_p8192_w8192 delay0_remove0_e0_r0_size512_gto48_p16384_w16384 delay0_remove0_e0_r0_size512_gto48_p32768_w32768
do

#figures: JPEG RAY srad_v1 histo
#7
cd $mother_dir
cd $configs_stor1
cd CUDA

cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" profile_output.txt | sed -e "s/$statistics[ ]*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
cd ..
done

done
#############################

done
