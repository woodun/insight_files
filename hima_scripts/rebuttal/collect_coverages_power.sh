#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/rebuttal_collection/bora_rebuttal_coverages_power_osp.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/asap_rebuttal

for statistics in 'gpu_tot_avg_power ='
do

printf "%s\r\n" $statistics >> $output

#coverage5_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage5_gto48_wattch1 wp6_osp_coverage5_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage10_gto48_wattch1 wp6_osp_coverage10_gto48_wattch1 coverage15_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage15_gto48_wattch1 wp6_osp_coverage15_gto48_wattch1 coverage20_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage20_gto48_wattch1 wp6_osp_coverage20_gto48_wattch1
#specify your config path in stor1
for configs_stor1 in coverage5_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage5_gto48_wattch1 wp6_tsp_coverage5_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage10_gto48_wattch1 wp6_tsp_coverage10_gto48_wattch1 coverage15_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage15_gto48_wattch1 wp6_tsp_coverage15_gto48_wattch1 coverage20_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage20_gto48_wattch1 wp6_tsp_coverage20_gto48_wattch1
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" gpgpusim_power_report* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
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
grep -o "$statistics[ ]*[-eE\+0-9\.]*" gpgpusim_power_report* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
