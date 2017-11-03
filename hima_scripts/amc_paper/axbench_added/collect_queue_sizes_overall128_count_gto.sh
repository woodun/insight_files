#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/queue_sizes_overall_count.txt
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/queue_sizes

for statistics in 'overall count 128 and more all:'
do

#match non 0 and non space character:
#/\(0\|\s\)\@!
#pcregrep -A 20000 -M "overall 128 and more all:[ ]*[\+0-9\. ]*GPGPU-Sim: synchronize waiting for inactive GPU simulation\nGPGPU-Sim API: Stream Manager State\n[\+0-9\. ]*" output_* | sed -e "s/overall 128 and more all:[ ]*//g" | sed -e "s/GPGPU-Sim: synchronize waiting for inactive GPU simulation//g" | sed -e "s/GPGPU-Sim API: Stream Manager State//g" | xargs printf "%s "

#############################
#15
#removed: 2DCONV FDTD-2D GRAMSCHM SYR2K
#GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV GEMM
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV GEMM
do

for configs_stor1 in delay0_remove0_e8_r0_size16_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size32_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size64_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size256_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size512_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size1024_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64
do

cd $mother_dir
cd $configs_stor1
cd polybench
cd $benchmark
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
done

done
#############################

#############################
#7
#TRA SCP CONS FWT LPS BlackScholes SLA RAY
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA RAY
do

for configs_stor1 in delay0_remove0_e8_r0_size16_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size32_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size64_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size256_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size512_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size1024_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64
do

cd $mother_dir
cd $configs_stor1
cd CUDA

cd $benchmark
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
done

done
#############################

#############################
#10
#binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
#removed: binarization
for benchmark in binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
do

for configs_stor1 in delay0_remove0_e8_r0_size16_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size32_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size64_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size256_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size512_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size1024_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64
do

cd $mother_dir
cd $configs_stor1
cd axbench

cd $benchmark
grep "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output
done

done
#############################

done
