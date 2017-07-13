#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/modified_coverage_IPC_osp.txt
mother_dir=/stor1/hwang07/modified_osp

for statistics in 'gpu_tot_ipc ='
do

#specify your config path in stor1
for configs_stor1 in coverage5_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage5_gto48 wp6_osp_coverage5_gto48 coverage10_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage10_gto48 wp6_osp_coverage10_gto48 coverage15_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage15_gto48 wp6_osp_coverage15_gto48 coverage20_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage20_gto48 wp6_osp_coverage20_gto48 coverage10_dynamic_osp_nopc_size8_RR48 wp0_osp_coverage10_RR48 wp6_osp_coverage10_RR48 coverage20_dynamic_osp_nopc_size8_RR48 wp0_osp_coverage20_RR48 wp6_osp_coverage20_RR48
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
