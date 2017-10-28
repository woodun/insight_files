#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/inf_delays_new.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/inf_delays

for statistics in 'overall accesses all:' 'overall activations all:' 'bw_util=' 'dram_eff=' 'gpu_tot_ipc =' 'readonly accesses all:' 'readonly activations all:' 'total global read access:' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate =' 'removed all:' 'delay queue full all:' 'row_hit_0 all:' 'actual coverage all:' 'used row all:' 'actual delay:' 'profiling done cycle:'
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in delay4096_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay2048_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay1024_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay512_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay256_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay128_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay64_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64
do

#15
#removed: 2DCONV FDTD-2D GRAMSCHM
#GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV GEMM SYR2K
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
#TRA SCP CONS FWT LPS BlackScholes SLA RAY
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in 
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#10
#binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
#removed: binarization
cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

printf "\r\n" >> $output
done
######################################################################################################################################

done
