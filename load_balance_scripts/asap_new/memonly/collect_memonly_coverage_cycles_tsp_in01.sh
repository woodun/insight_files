#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/memonly_coverages_cycles_tsp.txt
mother_dir=/stor1/hwang07/memonly_tsp

#grep -o "gpu_tot_sim_cycle =[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/gpu_tot_sim_cycle =[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
for statistics in 'gpu_tot_sim_cycle = '
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in coverage5_dynamic_tsp_nopc_size8_gto48_wattch_memonly wp0_tsp_coverage5_gto48_wattch_memonly wp6_tsp_coverage5_gto48_wattch_memonly coverage10_dynamic_tsp_nopc_size8_gto48_wattch_memonly wp0_tsp_coverage10_gto48_wattch_memonly wp6_tsp_coverage10_gto48_wattch_memonly coverage15_dynamic_tsp_nopc_size8_gto48_wattch_memonly wp0_tsp_coverage15_gto48_wattch_memonly wp6_tsp_coverage15_gto48_wattch_memonly coverage20_dynamic_tsp_nopc_size8_gto48_wattch_memonly wp0_tsp_coverage20_gto48_wattch_memonly wp6_tsp_coverage20_gto48_wattch_memonly
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
