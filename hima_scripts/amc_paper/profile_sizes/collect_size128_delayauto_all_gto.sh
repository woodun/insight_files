#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/delayonly_size128_delayauto_statistics.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delayonly_sizes

for statistics in 'overall accesses all:' 'overall activations all:' 'bw_util=' 'dram_eff=' 'gpu_tot_ipc =' 'readonly accesses all:' 'readonly activations all:' 'total global read access:' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate =' 'removed all:' 'delay queue full all:' 'row_hit_0 all:' 'actual coverage all:' 'used row all:' 'actual delay:' 'profiling done cycle:'
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in delayA_remove0_e0_r0_size128_gto48_p32768_w65536_c0_bw90 delayA_remove0_e0_r0_size128_gto48_p16384_w65536_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p16384_w131072_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p65536_w262144_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p8192_w65536_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p32768_w131072_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p32768_w262144_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p262144_w262144_c0_bw85 delayA_remove0_e0_r0_size128_gto48_p131072_w262144_c0_bw85
do

#13
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
