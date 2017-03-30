#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/wp0_tsp_RE.txt
mother_dir=/stor2/hwang07/final_coverage_tsp/

for statistics in 'RE:'
do

#specify your config path in stor1
for configs_stor1 in wp0_tsp_coverage10_gto48 wp0_tsp_coverage125_gto48 wp0_tsp_coverage143_gto48 wp0_tsp_coverage167_gto48 wp0_tsp_coverage182_gto48 wp0_tsp_coverage20_gto48 wp0_tsp_coverage222_gto48 wp0_tsp_coverage25_gto48 wp0_tsp_coverage273_gto48 wp0_tsp_coverage30_gto48 wp0_tsp_coverage333_gto48 wp0_tsp_coverage357_gto48 wp0_tsp_coverage375_gto48 wp0_tsp_coverage40_gto48 wp0_tsp_coverage429_gto48 wp0_tsp_coverage455_gto48 wp0_tsp_coverage474_gto48 wp0_tsp_coverage50_gto48 wp0_tsp_coverage526_gto48 wp0_tsp_coverage555_gto48 wp0_tsp_coverage571_gto48 wp0_tsp_coverage60_gto48 wp0_tsp_coverage625_gto48 wp0_tsp_coverage647_gto48 wp0_tsp_coverage688_gto48 wp0_tsp_coverage70_gto48 wp0_tsp_coverage727_gto48 wp0_tsp_coverage75_gto48 wp0_tsp_coverage786_gto48 wp0_tsp_coverage80_gto48 wp0_tsp_coverage833_gto48 wp0_tsp_coverage857_gto48 wp0_tsp_coverage875_gto48 wp0_tsp_coverage90_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT SYRK ATAX BICG SYR2K
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
for benchmark in TRA LPS SLA
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
