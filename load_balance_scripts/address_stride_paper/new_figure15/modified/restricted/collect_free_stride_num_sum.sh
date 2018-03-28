#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/asap_free_stride_num_sum.txt
mother_dir=/stor2/hwang07/restricted_asap

for statistics in 'sum_of_stride_count_restricted:' 'sum_of_stride_count1:'
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in dynamic_nopc_profile_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in ATAX BICG GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
printf "%s\r\n" $benchmark >> $output
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
printf "\r\n" >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in LPS CONS SCP SLA
do
cd $benchmark
printf "%s\r\n" $benchmark >> $output
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
printf "\r\n" >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
