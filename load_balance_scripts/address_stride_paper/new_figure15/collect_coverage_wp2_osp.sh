#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/wp2_osp_coverages.txt
mother_dir=/stor1/hwang07/final_coverage_osp/

for statistics in 'predictor coverage0:'
do

#specify your config path in stor1
for configs_stor1 in wp2_osp_coverage10_gto48 wp2_osp_coverage125_gto48 wp2_osp_coverage143_gto48 wp2_osp_coverage167_gto48 wp2_osp_coverage182_gto48 wp2_osp_coverage20_gto48 wp2_osp_coverage222_gto48 wp2_osp_coverage25_gto48 wp2_osp_coverage273_gto48 wp2_osp_coverage30_gto48 wp2_osp_coverage333_gto48 wp2_osp_coverage357_gto48 wp2_osp_coverage375_gto48 wp2_osp_coverage40_gto48 wp2_osp_coverage429_gto48 wp2_osp_coverage455_gto48 wp2_osp_coverage474_gto48 wp2_osp_coverage50_gto48 wp2_osp_coverage526_gto48 wp2_osp_coverage555_gto48 wp2_osp_coverage571_gto48 wp2_osp_coverage60_gto48 wp2_osp_coverage625_gto48 wp2_osp_coverage647_gto48 wp2_osp_coverage688_gto48 wp2_osp_coverage70_gto48 wp2_osp_coverage727_gto48 wp2_osp_coverage75_gto48 wp2_osp_coverage786_gto48 wp2_osp_coverage80_gto48 wp2_osp_coverage833_gto48 wp2_osp_coverage857_gto48 wp2_osp_coverage875_gto48 wp2_osp_coverage90_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG GRAMSCHM SYR2K
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
