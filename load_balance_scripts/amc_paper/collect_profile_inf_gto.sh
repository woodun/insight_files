#!/bin/sh

#specify your output file
output=/stor1/hwang07/amc_collection/profile_inf_gto.txt
mother_dir=/stor1/hwang07/AMC_profile

for statistics in 'real case 32 all:'
do

#specify your config path in stor1
for configs_stor1 in AMC_profile_inf_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
