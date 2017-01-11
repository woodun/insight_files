#!/bin/sh

#specify your output file
output=/stor1/hwang07/dynamic_profile.txt

#specify your config path in stor1
for configs_stor1 in /stor1/hwang07/dynamic_profile_S/dynamic_on_gto48 /stor1/hwang07/dynamic_profile_S/dynamic_off_gto48 /stor2/hwang07/dynamic_profile_S/dynamic_on_RR48 /stor2/hwang07/dynamic_profile_S/dynamic_off_RR48
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
grep -o "sum_count:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/sum_count://g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
grep -o "sum_count:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/sum_count://g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

#specify your config path in stor1
for configs_stor1 in /stor1/hwang07/dynamic_profile_S/dynamic_on_gto48 /stor1/hwang07/dynamic_profile_S/dynamic_off_gto48 /stor2/hwang07/dynamic_profile_S/dynamic_on_RR48 /stor2/hwang07/dynamic_profile_S/dynamic_off_RR48
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
grep -o "avg_abs_stride_diff_sn:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/avg_abs_stride_diff_sn://g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
grep -o "avg_abs_stride_diff_sn:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/avg_abs_stride_diff_sn://g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

#specify your config path in stor1
for configs_stor1 in /stor1/hwang07/dynamic_profile_S/dynamic_on_gto48 /stor1/hwang07/dynamic_profile_S/dynamic_off_gto48 /stor2/hwang07/dynamic_profile_S/dynamic_on_RR48 /stor2/hwang07/dynamic_profile_S/dynamic_off_RR48
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
grep -o "avg_abs_stride_diff_s1:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/avg_abs_stride_diff_s1://g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
grep -o "avg_abs_stride_diff_s1:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/avg_abs_stride_diff_s1://g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################