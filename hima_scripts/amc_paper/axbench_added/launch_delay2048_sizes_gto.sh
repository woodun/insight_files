#!/bin/sh

#####################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/delay2048_sizes

for configs_stor1 in delay2048_remove0_e8_r0_size16_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay2048_remove0_e8_r0_size32_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay2048_remove0_e8_r0_size64_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay2048_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay2048_remove0_e8_r0_size256_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay2048_remove0_e8_r0_size512_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay2048_remove0_e8_r0_size1024_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64
do

#15
#all: GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#removed: 2DCONV FDTD-2D GRAMSCHM SYR2K
#
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV GEMM
do
cd $benchmark
qsub hi_pbs_$benchmark.pbs
cd ..
done

#8
#figures: srad_v1 histo JPEG RAY
#all: SCP FWT LPS BlackScholes SLA TRA CONS RAY
#removed:
#
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA RAY
do
cd $benchmark
qsub hi_pbs_$benchmark.pbs
cd ..
done

#10
#all: binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
#removed: binarization
cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
do
cd $benchmark
qsub hi_pbs_$benchmark.pbs
cd ..
done

done