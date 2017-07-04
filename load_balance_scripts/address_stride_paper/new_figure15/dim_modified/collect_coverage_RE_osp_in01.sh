#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/dim_modified_coverage_RE_osp.txt
mother_dir=/stor1/hwang07/dim_modified_osp

for statistics in 'RE:'
do

#specify your config path in stor1
for configs_stor1 in coverage10_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage10_gto48 wp6_osp_coverage10_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN 2DCONV 2MM 3DCONV 3MM ATAX BICG FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK
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
for benchmark in JPEG_ENCODE JPEG_DECODE RAY BlackScholes CONS SCP SLA TRA
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
