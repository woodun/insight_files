#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/modified_sizes.txt
mother_dir=/stor1/hwang07/modified_sizes

for statistics in 'predictable to miss rate:'
do

#specify your config path in stor1
for configs_stor1 in dynamic_noold_nopc_size1_gto48 dynamic_noold_nopc_size2_gto48 dynamic_noold_nopc_size3_gto48 dynamic_noold_nopc_size4_gto48 dynamic_noold_nopc_size5_gto48 dynamic_noold_nopc_size6_gto48 dynamic_noold_nopc_size7_gto48 dynamic_noold_nopc_size8_gto48 dynamic_noold_nopc_size9_gto48 dynamic_noold_nopc_size10_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in ATAX BICG GESUMMV MVT SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV
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
