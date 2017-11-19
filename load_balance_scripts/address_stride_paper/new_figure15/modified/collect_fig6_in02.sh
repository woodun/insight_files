#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/asap_fig6.txt
mother_dir=/stor2/hwang07/modified_fig6

for statistics in 'sum_count:' 'avg_abs_stride_diff_sn:' 'avg_abs_stride_diff_s1:' 'avg_abs_stride_bias_sn:' 'avg_abs_stride_bias_s1:'
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in dynamic_nopc_profile_gto48 osp_profile_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV ATAX BICG
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
