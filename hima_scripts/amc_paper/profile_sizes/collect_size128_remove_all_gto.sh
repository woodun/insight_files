#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/remove_size128_statistics.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/remove_rs

for statistics in 'overall accesses all:' 'overall activations all:' 'bw_util=' 'dram_eff=' 'gpu_tot_ipc =' 'readonly accesses all:' 'readonly activations all:' 'total global read access:' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate =' 'removed all:' 'delay queue full all:' 'row_hit_0 all:' 'actual coverage all:' 'used row all:' 'actual delay:' 'profiling done cycle:'
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c256 delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c512 delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c1024 delay0_remove10_e6_r11_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r12_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r13_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r14_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r15_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r16_size128_gto48_p65536_w65536_c2048 delay0_remove10_e6_r17_size128_gto48_p65536_w65536_c2048
do

#15
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
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
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA RAY
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
