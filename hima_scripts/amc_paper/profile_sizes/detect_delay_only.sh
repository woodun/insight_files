#!/bin/sh

###################################################################################
output=/sciclone/data10/hwang07/GPU_RESEARCH/relaunch.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delayonly_sizes

#specify your config path in stor1
#delay0_remove10_e6_r2_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r3_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r4_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r5_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r6_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c512
#delay0_remove10_e6_r2_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r3_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r4_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r5_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r6_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r2_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r3_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r4_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r5_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r6_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r7_size128_gto48_p65536_w65536_c2048
for configs_stor1 in delayA_remove0_e0_r0_size128_gto48_p131072_w131072_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p65536_w131072_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p65536_w65536_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p32768_w65536_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p32768_w32768_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p16384_w32768_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p16384_w16384_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p8192_w16384_c0_bw85
do

#total 23
#15
#GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K 
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