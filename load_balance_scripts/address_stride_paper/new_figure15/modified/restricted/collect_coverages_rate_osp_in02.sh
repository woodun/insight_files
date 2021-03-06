#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/restricted_asap_rate.txt
mother_dir=/stor2/hwang07/restricted_asap

for statistics in 'predictable to miss rate:' 'predictable to access rate:'
do

#specify your config path in stor1
for configs_stor1 in coverage100_dynamic_osp_nopc_size8_gto48 coverage100_dynamic_tsp_nopc_size8_gto48 coverage100_dynamic_osp_nopc_size8_RR48 coverage100_dynamic_tsp_nopc_size8_RR48 dynamic_nolong_nopc_gto48 dynamic_noold_nopc_size2_gto48 dynamic_noold_nopc_size4_gto48 dynamic_noold_nopc_size6_gto48 dynamic_noold_nopc_size8_gto48 dynamic_noold_nopc_size10_gto48
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
