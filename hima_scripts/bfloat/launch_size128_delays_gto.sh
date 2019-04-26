#!/bin/sh

#####################################################
mother_dir=/sciclone/pscr/hwang07/bfloat_exp

#these configs use half buswidth by default
for configs_stor1 in sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_baseline sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_removeall sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_ratio4_gto48_removeall
do

#15
#all: GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#removed: (input supposed to be int) 2DCONV_EMBOSS 2DCONV_BLUR
#removed: (high error) GRAMSCHM
#modified: GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#input cannot be changed: 

#GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D SYR2K
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
cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in 
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#all: SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
#todo: check if rand, enable output, run first and see their results, then decide what to print to compare and run again
#rand removed: InvertedIndex
#removed: (little float) SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
cd $mother_dir
cd $configs_stor1
cd Mars
for benchmark in 
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#all: bfs bh dmr mst sp sssp 
#removed: (run too long) bfs bh dmr mst sp sssp 
cd $mother_dir
cd $configs_stor1
cd lonestar
for benchmark in 
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#all: cutcp histo mm spmv sad lbm tpacf
#removed: (little float) sad cutcp

#histo mm spmv lbm tpacf
cd $mother_dir
cd $configs_stor1
cd parboil
for benchmark in histo lbm
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#all: backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
#removed: (little float) bfs pf_float

#backprop hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2
cd $mother_dir
cd $configs_stor1
cd rodinia
for benchmark in 
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#all: MD QTC Reduction Scan Spmv Stencil2D Triad BFS 

#MD QTC Reduction Scan Spmv Stencil2D Triad BFS 
cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in MD Scan Spmv Stencil2D Triad BFS 
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done


done




