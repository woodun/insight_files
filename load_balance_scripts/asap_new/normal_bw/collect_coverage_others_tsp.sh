#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/nb_asap_more_apps_tsp2.txt
mother_dir=/stor1/hwang07/nb_asap/coverages

for statistics in 'gpu_tot_ipc =' 'to access rate:' 'predictable to miss rate:' 'predictable lines:' 'bw_util=' 'bwutil_global_read=' 'bwutil_global_write=' 'L1D_total_cache_miss_rate =' 'L1D_total_cache_misses =' 'L2_total_cache_miss_rate =' 'L2_total_cache_misses =' 'average_avg_distance:' 'average_avg_bias:' 'Stall:' 'W0_Idle:' 'W0_Scoreboard:' 'averagemflatency ='
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in coverage20_dynamic_tsp_nopc_size8_gto48_wattch1_nb wp0_tsp_coverage20_gto48_wattch1_nb wp6_tsp_coverage20_gto48_wattch1_nb
do

#13
#not changed: ATAX BICG GESUMMV MVT SYR2K SYRK 2DCONV 3DCONV
#tsp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
#GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
#removed:
#added: ATAX BICG
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV ATAX BICG
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: CONS TRA SCP SLA
#tsp not good: BlackScholes JPEG_ENCODE
#7
#SLA TRA SCP CONS
#removed:
#added: LPS
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SLA TRA SCP CONS LPS
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#MD QTC Reduction Scan Spmv Stencil2D Triad BFS
#removed: QTC Spmv Stencil2D BFS MD
#Reduction Scan Triad
#Triad
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
