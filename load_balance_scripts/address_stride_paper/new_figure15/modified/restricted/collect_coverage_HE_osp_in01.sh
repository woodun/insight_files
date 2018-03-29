#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/restricted_coverage10_HE.txt
mother_dir=/stor1/hwang07/restricted_asap

for statistics in 'average_avg_bias:'
do

#specify your config path in stor1
for configs_stor1 in coverage10_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_gto48_wattch1
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR ATAX BICG 3DCONV
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SLA SCP CONS LPS
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
