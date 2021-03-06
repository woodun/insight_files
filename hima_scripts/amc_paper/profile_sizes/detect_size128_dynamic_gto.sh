#!/bin/sh

###################################################################################
output=/sciclone/data10/hwang07/GPU_RESEARCH/relaunch.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_dynamic_remove

#specify your config path in stor1
for configs_stor1 in delay0_remove10D_e8_r11_size128_gto48_pw1024_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw2048_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw4096_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw16384_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw32768_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw65536_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw131072_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e0_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e8_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e7_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e6_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e5_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e4_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e3_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e2_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e1_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200
do

#total 23
#15
#GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#removed: 2DCONV
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
if [[ -s $benchmark\_CPU.txt ]]; then
pwd | xargs printf "%s "
echo 'ok'
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done

#figures: srad_v1 histo JPEG RAY
#8
#SCP FWT LPS BlackScholes SLA TRA CONS RAY
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SCP FWT LPS BlackScholes SLA TRA CONS RAY
do
cd $benchmark
if [[ -s $benchmark\_CPU.txt ]]; then
pwd | xargs printf "%s "
echo 'ok'
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done

done