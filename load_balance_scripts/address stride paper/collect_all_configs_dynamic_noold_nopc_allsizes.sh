#!/bin/sh

#specify your output file
output=/stor1/hwang07/paper_collection/dynamic_noold_nopc_allsizes.txt
mother_dir=/stor1/hwang07/dynamic_noold_nopc_S

for statistics in 'predictor coverage0:'
do

#specify your config path in stor1
for configs_stor1 in dynamic_noold_nopc_size24_gto48 dynamic_noold_nopc_size23_gto48 dynamic_noold_nopc_size22_gto48 dynamic_noold_nopc_size21_gto48 dynamic_noold_nopc_size20_gto48 dynamic_noold_nopc_size19_gto48 dynamic_noold_nopc_size18_gto48 dynamic_noold_nopc_size17_gto48 dynamic_noold_nopc_size16_gto48 dynamic_noold_nopc_size15_gto48 dynamic_noold_nopc_size14_gto48 dynamic_noold_nopc_size13_gto48 dynamic_noold_nopc_size12_gto48 dynamic_noold_nopc_size11_gto48 dynamic_noold_nopc_size10_gto48 dynamic_noold_nopc_size9_gto48 dynamic_noold_nopc_size8_gto48 dynamic_noold_nopc_size7_gto48 dynamic_noold_nopc_size6_gto48 dynamic_noold_nopc_size5_gto48 dynamic_noold_nopc_size4_gto48 dynamic_noold_nopc_size3_gto48 dynamic_noold_nopc_size2_gto48 dynamic_noold_nopc_size1_gto48
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
