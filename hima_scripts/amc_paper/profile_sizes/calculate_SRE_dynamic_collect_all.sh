#!/bin/sh

########################################input mother dir path
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_dynamic_remove
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/remove_RE_dynamic.txt
statistics='RE:'

#cd $1
cd $mother_dir

#for i in $(ls -d *)
for i in delay0_remove10D_e8_r11_size128_gto48_pw1024_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw2048_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw4096_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw16384_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw32768_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw65536_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw131072_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e0_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e8_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e7_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e6_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e5_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e4_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e3_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e2_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e1_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200
do

cd $i


cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..

cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA RAY
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..


cd ..

printf "\r\n" >> $output

done