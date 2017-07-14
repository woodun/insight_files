#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/halfbw_others_tsp.txt
mother_dir=/stor2/hwang07/halfbw_tsp

for statistics in 'gpu_tot_ipc =' 'bw_util=' 'Stall:' 'predictable lines:' 'average_avg_distance:' 'average_avg_bias:'
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in halfbw_coverage5_dynamic_tsp_nopc_size8_gto48 halfbw_coverage10_dynamic_tsp_nopc_size8_gto48 halfbw_coverage15_dynamic_tsp_nopc_size8_gto48 halfbw_coverage20_dynamic_tsp_nopc_size8_gto48
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
