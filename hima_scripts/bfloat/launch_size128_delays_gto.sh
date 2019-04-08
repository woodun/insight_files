#!/bin/sh

#####################################################
mother_dir=/sciclone/pscr/hwang07/bfloat_exp

#these configs use half buswidth by default
for configs_stor1 in sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_baseline sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_removeall sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_ratio4_gto48_removeall
do

#15
#all: GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#removed: (input supposed to be int) 2DCONV_EMBOSS 2DCONV_BLUR
#modified: GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#input cannot be changed: 

#GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#8
#figures: srad_v1 histo JPEG RAY
#all: SCP FWT LPS BlackScholes SLA TRA CONS RAY
#removed: (little float) RAY
#modified: SCP FWT BlackScholes SLA TRA CONS
#input cannot be changed: LPS

#SCP FWT LPS BlackScholes SLA TRA CONS
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in  
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#10
#all: binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
#removed: (little float) binarization laplacian meanfilter sobel inversek2j
#input cannot be changed: blackscholes convolution jmeint newton-raph srad

#blackscholes convolution jmeint newton-raph srad
do
cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in 
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd Mars
for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

done