#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/schedulers_asap_osp_RE.txt
mother_dir=/stor1/hwang07/final_accurate_osp/

for statistics in $1
do

#specify your config path in stor1
for configs_stor1 in coverage20_dynamic_osp_nopc_size8_lrr48 coverage20_dynamic_osp_nopc_size8_RR48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG SYR2K
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in TRA LPS SLA
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
