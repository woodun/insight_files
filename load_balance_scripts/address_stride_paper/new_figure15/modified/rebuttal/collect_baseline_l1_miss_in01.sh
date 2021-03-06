#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/rebuttal_baseline_l1_miss.txt
mother_dir=/stor1/hwang07/rebuttal_baseline

for statistics in 'L1D_total_cache_misses = '
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in tsp_address_exp_gtoswl48_alloff_wattch1
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
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
for benchmark in SLA TRA CONS SCP
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
