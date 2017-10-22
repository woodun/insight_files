#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/delayonly_size128_delayauto_gto.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_delayauto

for statistics in 'overall accesses all:' 'overall activations all:' 'bw_util=' 'dram_eff=' 'gpu_tot_ipc =' 'readonly accesses all:' 'readonly activations all:' 'total global read access:' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate =' 'removed all:' 'delay queue full all:' 'row_hit_0 all:' 'actual coverage all:' 'used row all:' 'actual delay:' 'profiling done cycle:' 'reprofiling count:'
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in delayA_remove0_e8_r0_size128_gto48_pw16384_ww16384_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw16384_ww16384_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw16384_ww16384_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw16384_ww16384_c128_bw85_aw1000_rw5000_rp800 delayA_remove0_e8_r0_size128_gto48_pw16384_ww32768_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw16384_ww32768_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw16384_ww32768_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw16384_ww32768_c128_bw85_aw1000_rw5000_rp800 delayA_remove0_e8_r0_size128_gto48_pw16384_ww8192_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw16384_ww8192_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw16384_ww8192_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw16384_ww8192_c128_bw85_aw1000_rw5000_rp800 delayA_remove0_e8_r0_size128_gto48_pw32768_ww16384_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw32768_ww16384_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw32768_ww16384_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw32768_ww16384_c128_bw85_aw1000_rw5000_rp800 delayA_remove0_e8_r0_size128_gto48_pw32768_ww32768_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw32768_ww32768_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw32768_ww32768_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw32768_ww32768_c128_bw85_aw1000_rw5000_rp800 delayA_remove0_e8_r0_size128_gto48_pw32768_ww8192_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw32768_ww8192_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw32768_ww8192_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw32768_ww8192_c128_bw85_aw1000_rw5000_rp800 delayA_remove0_e8_r0_size128_gto48_pw65536_ww16384_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw65536_ww16384_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw65536_ww16384_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw65536_ww16384_c128_bw85_aw1000_rw5000_rp800 delayA_remove0_e8_r0_size128_gto48_pw65536_ww32768_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw65536_ww32768_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw65536_ww32768_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw65536_ww32768_c128_bw85_aw1000_rw5000_rp800 delayA_remove0_e8_r0_size128_gto48_pw65536_ww8192_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw65536_ww8192_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw65536_ww8192_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw65536_ww8192_c128_bw85_aw1000_rw5000_rp800 delayA_remove0_e8_r0_size128_gto48_pw8192_ww16384_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw8192_ww16384_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw8192_ww16384_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw8192_ww16384_c128_bw85_aw1000_rw5000_rp800 delayA_remove0_e8_r0_size128_gto48_pw8192_ww32768_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw8192_ww32768_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw8192_ww32768_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw8192_ww32768_c128_bw85_aw1000_rw5000_rp800 delayA_remove0_e8_r0_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp1600 delayA_remove0_e8_r0_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delayA_remove0_e8_r0_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp400 delayA_remove0_e8_r0_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp800
do

#15
#all: GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#removed: 2DCONV
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#8
#figures: srad_v1 histo JPEG RAY
#all: SCP FWT LPS BlackScholes SLA TRA CONS RAY
#removed:
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
