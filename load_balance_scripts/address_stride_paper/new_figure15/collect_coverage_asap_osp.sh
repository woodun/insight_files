#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/asap_osp_coverages.txt
mother_dir=/stor1/hwang07/final_coverage_osp/

for statistics in 'predictor coverage0:'
do

#specify your config path in stor1
for configs_stor1 in coverage10_dynamic_osp_nopc_size8_gto48 coverage125_dynamic_osp_nopc_size8_gto48 coverage143_dynamic_osp_nopc_size8_gto48 coverage167_dynamic_osp_nopc_size8_gto48 coverage182_dynamic_osp_nopc_size8_gto48 coverage20_dynamic_osp_nopc_size8_gto48 coverage222_dynamic_osp_nopc_size8_gto48 coverage25_dynamic_osp_nopc_size8_gto48 coverage273_dynamic_osp_nopc_size8_gto48 coverage30_dynamic_osp_nopc_size8_gto48 coverage333_dynamic_osp_nopc_size8_gto48 coverage357_dynamic_osp_nopc_size8_gto48 coverage375_dynamic_osp_nopc_size8_gto48 coverage40_dynamic_osp_nopc_size8_gto48 coverage429_dynamic_osp_nopc_size8_gto48 coverage455_dynamic_osp_nopc_size8_gto48 coverage474_dynamic_osp_nopc_size8_gto48 coverage50_dynamic_osp_nopc_size8_gto48 coverage526_dynamic_osp_nopc_size8_gto48 coverage555_dynamic_osp_nopc_size8_gto48 coverage571_dynamic_osp_nopc_size8_gto48 coverage60_dynamic_osp_nopc_size8_gto48 coverage625_dynamic_osp_nopc_size8_gto48 coverage647_dynamic_osp_nopc_size8_gto48 coverage688_dynamic_osp_nopc_size8_gto48 coverage70_dynamic_osp_nopc_size8_gto48 coverage727_dynamic_osp_nopc_size8_gto48 coverage75_dynamic_osp_nopc_size8_gto48 coverage786_dynamic_osp_nopc_size8_gto48 coverage80_dynamic_osp_nopc_size8_gto48 coverage833_dynamic_osp_nopc_size8_gto48 coverage857_dynamic_osp_nopc_size8_gto48 coverage875_dynamic_osp_nopc_size8_gto48 coverage90_dynamic_osp_nopc_size8_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG SYR2K
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
for benchmark in TRA LPS SLA
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
