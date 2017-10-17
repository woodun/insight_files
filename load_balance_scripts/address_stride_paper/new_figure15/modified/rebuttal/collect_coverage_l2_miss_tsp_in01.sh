#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/rebuttal_coverages_l2_miss_tsp.txt
mother_dir=/stor2/hwang07/modified_tsp

#grep -o "gpu_tot_sim_cycle =[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/gpu_tot_sim_cycle =[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
for statistics in 'L2_total_cache_misses = '
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in coverage5_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage5_gto48 wp6_tsp_coverage5_gto48 coverage10_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp6_tsp_coverage10_gto48 coverage15_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage15_gto48 wp6_tsp_coverage15_gto48 coverage20_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage20_gto48 wp6_tsp_coverage20_gto48
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
