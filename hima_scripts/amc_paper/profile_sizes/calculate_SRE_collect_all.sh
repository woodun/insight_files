#!/bin/sh

########################################input mother dir path
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/remove_RE4_new.txt
statistics='RE4:'

#cd $1
cd /sciclone/data10/hwang07/GPU_RESEARCH/amc/remove_rs

#for i in $(ls -d *)
for i in delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c2048
do

cd $i


cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
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