#!/bin/sh

#specify your output file
output=/stor1/hwang07/all_off.txt

for statistics in 'gpu_tot_ipc:' 'bwutil_global_read=' 'bwutil_global_write=' 'predictable to miss rate:' 'predictable to access rate:' 'evict_to_update_rate_all:' 'evict_to_access_rate_all:' 'miss_count_all:' 'predictable lines:'
do

#specify your config path in stor1
for configs_stor1 in /stor2/hwang07/all_off_S/all_off_gto48
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
