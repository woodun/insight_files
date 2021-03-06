#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/delay16_gto_added.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delay

for statistics in 'added in delay queue all:'
do

#specify your config path in stor1
for configs_stor1 in AMC_delay16_size16_gto48 AMC_delay32_size16_gto48 AMC_delay64_size16_gto48 AMC_delay128_size16_gto48 AMC_delay256_size16_gto48
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
