#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/dynamic_tsp_nolong_noold_original_nopc_error1.txt

for statistics in 'ACT_percRelativeError '
do

#specify your config path in stor1
for configs_stor1 in /stor1/hwang07/dynamic_tsp_nopc_S/dynamic_tsp_nopc_gto48 /stor1/hwang07/dynamic_nolong_nopc_S/dynamic_nolong_nopc_gto48 /stor1/hwang07/dynamic_noold_nopc_S/dynamic_noold_nopc_size8_gto48 /stor1/hwang07/dynamic_nopc_S/dynamic_nopc_gto48
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
