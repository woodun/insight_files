#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/dim_modified_baseline_IPC.txt
mother_dir=/stor2/hwang07/dim_modified_baseline

for statistics in 'gpu_tot_ipc ='
do

#specify your config path in stor1
for configs_stor1 in tsp_address_exp_gtoswl48_alloff
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN 2DCONV 2MM 3DCONV 3MM ATAX BICG FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK
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
for benchmark in JPEG_ENCODE JPEG_DECODE RAY BlackScholes CONS SCP SLA TRA
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
