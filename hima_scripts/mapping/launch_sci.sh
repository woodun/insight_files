#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/sciclone/pscr/hwang07/mapping_exp

for configs_stor1 in mapping0_GTX480 mapping1_GTX480 mapping2_GTX480 mapping3_GTX480
do

#BlackScholes CP LIB LPS NQU RAY STO SCP SLA CONS FWT TRA lulesh AES BFS MUM NN kmeans JPEG BFS2 KMN
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in AES kmeans
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV 3DCONV 2MM 3MM ATAX BICG CORR COVAR FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#
cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#bfs bh dmr mst sp sssp
cd $mother_dir
cd $configs_stor1
cd lonestar
for benchmark in 
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#
cd $mother_dir
cd $configs_stor1
cd Mars
for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#cutcp histo mm sad spmv lbm tpacf
cd $mother_dir
cd $configs_stor1
cd parboil
for benchmark in 
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
cd $mother_dir
cd $configs_stor1
cd rodinia
for benchmark in 
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#MD QTC Reduction Scan Spmv Stencil2D Triad BFS
cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in 
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

done















