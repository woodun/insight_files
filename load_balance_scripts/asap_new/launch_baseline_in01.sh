#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor1/hwang07/asap/baseline

for configs_stor1 in tsp_address_exp_gtoswl48_alloff_wattch1
do

#SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
#removed: WordCount
#SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch
cd $mother_dir
cd $configs_stor1
cd Mars
for benchmark in MatrixMul
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#cutcp histo mm sad spmv lbm tpacf
#removed: cutcp  mm sad  lbm histo tpacf spmv
cd $mother_dir
cd $configs_stor1
cd parboil
for benchmark in
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
#removed: backprop bfs hotspot pathfinder leukocyte srad_v1 srad_v2 heartwall cfd  pf_float streamcluster
#nw lud
cd $mother_dir
cd $configs_stor1
cd rodinia
for benchmark in 
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#MD QTC Reduction Scan Spmv Stencil2D Triad BFS
#removed: QTC Spmv Stencil2D BFS MD
#Reduction Scan Triad
#Triad
cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in 
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#####################################################################################################################
#bfs bh dmr mst sp sssp
#removed: bfs bh dmr mst sp sssp
cd $mother_dir
cd $configs_stor1
cd lonestar
for benchmark in 
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done 

#10
#binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
#removed:
cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in 
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#13
#not changed: ATAX BICG GESUMMV MVT SYR2K SYRK 2DCONV 3DCONV
#tsp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
#GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
#removed:
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: CONS TRA SCP SLA
#tsp not good: BlackScholes JPEG_ENCODE
#7
#SLA TRA SCP CONS
#removed:
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in 
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

done