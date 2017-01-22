#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/spatial_osp_S/spatial_osp_gto48
#cd spatial_osp_gto48
#sh setup_ALL.sh spatial_osp_gto48
#sh setup_ALL.sh spatial_osp_lrr48
#sh setup_ALL.sh spatial_osp_RR48
###################################################################################
output=/home/hwang07/stor1/relaunch.txt

#specify your config path in stor1
for configs_stor1 in /stor1/hwang07/spatial_osp_S/spatial_osp_gto48 /stor1/hwang07/spatial_osp_S/spatial_osp_lrr48 /stor1/hwang07/spatial_osp_S/spatial_osp_RR48
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
if [[ -s $benchmark\_CPU.txt ]]; then
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
if [[ -s $benchmark\_CPU.txt ]]; then
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done

done