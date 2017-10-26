#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/axbench_coverage_osp.txt
mother_dir=/stor1/hwang07/asap/coverages

for statistics in 'predictable to access rate:'
do

#specify your config path in stor1
for configs_stor1 in coverage5_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage5_gto48_wattch1 wp6_tsp_coverage5_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage10_gto48_wattch1 wp6_tsp_coverage10_gto48_wattch1 coverage15_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage15_gto48_wattch1 wp6_tsp_coverage15_gto48_wattch1 coverage20_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage20_gto48_wattch1 wp6_tsp_coverage20_gto48_wattch1
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
#2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN 2DCONV 2MM 3DCONV 3MM ATAX BICG FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK
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
#JPEG_ENCODE JPEG_DECODE RAY BlackScholes CONS SCP SLA TRA
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
