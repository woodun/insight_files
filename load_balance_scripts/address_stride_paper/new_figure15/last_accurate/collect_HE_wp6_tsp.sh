#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/"$2"
mother_dir=/stor2/hwang07/last_accurate_tsp/

for statistics in "$1"
do

#specify your config path in stor1
for configs_stor1 in wp6_tsp_coverage10_gto48 wp6_tsp_coverage20_gto48 wp6_tsp_coverage30_gto48 wp6_tsp_coverage40_gto48 wp6_tsp_coverage50_gto48
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
