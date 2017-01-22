#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/all_off_S/all_off_gto48
#cd all_off_gto48
#sh setup_ALL.sh all_off_lrr48

###################################################################################
output=stor1/hwang07/relaunch.txt

#specify your config path in stor2
for configs_stor1 in /stor2/hwang07/all_off_S/all_off_lrr48 /stor2/hwang07/all_off_S/all_off_RR48 /stor2/hwang07/all_off_S/all_off_swl1
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
if [[ -s $benchmark_CPU.txt ]]; then 
pwd
echo 'ok'
else
pwd | xargs printf "%s " >> $output
fi
cd ..
done

#figures: srad_v1 histo JPEG RAY
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
if [[ -s $benchmark_CPU.txt ]]; then
pwd
echo 'ok'
else
pwd | xargs printf "%s " >> $output
fi
cd ..
done

done