#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/dsn_combined.txt
mother_dir=/sciclone/pscr/hwang07/dsn_amc

for statistics in 'overall accesses all:' 'overall activations all:' 'bw_util=' 'dram_eff=' 'gpu_tot_ipc =' 'readonly accesses all:' 'readonly activations all:' 'total global read access:' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate =' 'removed all:' 'delay queue full all:' 'row_hit_0 all:' 'actual coverage all:' 'used row all:' 'actual delay:' 'profiling done cycle:' 'reprofiling count:'
do

#order: baseline(delay0_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64) 
#static-DMS(delay128_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64)
#dyn-DMS(copy_starting0_delayA_remove0_e8_r0_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32)
#static-AMS(delay0_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32) 
#dyn-AMS(delay0_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32)
#static-DMS&static-AMS(delay128_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32) 
#dyn-DMS&dyn-AMS(delayA_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32)

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in delay0_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay128_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 copy_starting0_delayA_remove0_e8_r0_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delay0_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delay0_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delay128_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32
do

#15
#all: GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#removed: 2DCONV FDTD-2D GRAMSCHM SYR2K 2DCONV_EMBOSS 2DCONV_BLUR SYRK
#GESUMMV MVT 2MM 3MM ATAX BICG 3DCONV GEMM
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM ATAX BICG 3DCONV GEMM
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#8
#figures: srad_v1 histo JPEG RAY
#all: SCP FWT LPS BlackScholes SLA TRA CONS RAY
#removed: BlackScholes 
#TRA SCP CONS FWT LPS SLA RAY
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS SLA RAY
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#10
#all: binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
#removed: binarization
#blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
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
