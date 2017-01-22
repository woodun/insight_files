#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/osp_profile_S/osp_profile_gto48
#cd osp_profile_gto48
#sh setup_ALL.sh osp_profile_gto48
#sh setup_ALL.sh osp_profile_lrr48
#sh setup_ALL.sh osp_profile_RR48
#sh setup_ALL.sh osp_profile_swl1
###################################################################################
output=/home/hwang07/stor1/relaunch.txt

#specify your config path in stor1
for configs_stor1 in /stor2/hwang07/osp_profile_S/osp_profile_gto48 /stor2/hwang07/osp_profile_S/osp_profile_lrr48 /stor2/hwang07/osp_profile_S/osp_profile_RR48 /stor2/hwang07/osp_profile_S/osp_profile_swl1
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