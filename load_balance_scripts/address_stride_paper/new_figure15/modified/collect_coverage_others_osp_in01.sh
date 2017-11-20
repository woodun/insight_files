#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/asap_coverage_others_osp.txt
mother_dir=/stor1/hwang07/modified_osp

for statistics in 'gpu_tot_ipc =' 'to access rate:' 'predictable to miss rate:' 'predictable lines:' 'bw_util=' 'bwutil_global_read=' 'bwutil_global_write=' 'L1D_total_cache_miss_rate =' 'L1D_total_cache_misses =' 'L2_total_cache_miss_rate =' 'L2_total_cache_misses =' 'average_avg_distance:' 'average_avg_bias:' 'Stall:' 'W0_Idle:' 'W0_Scoreboard:' 'averagemflatency ='
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in coverage5_dynamic_osp_nopc_size8_gto48 coverage10_dynamic_osp_nopc_size8_gto48 coverage15_dynamic_osp_nopc_size8_gto48 coverage20_dynamic_osp_nopc_size8_gto48
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
for benchmark in SLA TRA CONS SCP LPS
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in Triad
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
