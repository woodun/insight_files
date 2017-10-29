#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/axbench_osp.txt
mother_dir=/stor2/hwang07/asap/coverages

for statistics in 'gpu_tot_ipc =' 'bw_util=' 'predictable lines:' 'average_avg_distance:' 'average_avg_bias:' 'to access rate:' 'Stall:' 'W0_Idle:' 'W0_Scoreboard:' 'averagemflatency ='
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in coverage5_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage5_gto48_wattch1 wp6_osp_coverage5_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage10_gto48_wattch1 wp6_osp_coverage10_gto48_wattch1 coverage15_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage15_gto48_wattch1 wp6_osp_coverage15_gto48_wattch1 coverage20_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage20_gto48_wattch1 wp6_osp_coverage20_gto48_wattch1
do

#10
#binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#13
#GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
#SLA TRA CONS SCP
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in 
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
