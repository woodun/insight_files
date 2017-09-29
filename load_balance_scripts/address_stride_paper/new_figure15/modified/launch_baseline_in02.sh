#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor2/hwang07/modified_baseline

for configs_stor1 in tsp_address_exp_gtoswl48_alloff
do

#13
#not changed: 2DCONV 3DCONV ATAX BICG GESUMMV MVT SYR2K SYRK
#tsp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
#2DCONV 3DCONV 2MM 3MM ATAX BICG FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN
#CORR COVAR
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: CONS TRA SCP SLA
#tsp not good: BlackScholes JPEG_ENCODE
#7 
#BlackScholes RAY SCP SLA CONS TRA JPEG_ENCODE JPEG_DECODE
#CP LIB NQU STO FWT lulesh AES BFS MUM NN kmeans JPEG BFS2 KMN 
#LPS
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#bfs bh dmr mst sp sssp
cd $mother_dir
cd $configs_stor1
cd lonestar
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#SimilarityScore Kmeans MatrixMul StringMatch 
#WordCount
cd $mother_dir
cd $configs_stor1
cd Mars
for benchmark in InvertedIndex PageViewCount PageViewRank
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#cutcp histo mm sad spmv lbm
#tpacf
cd $mother_dir
cd $configs_stor1
cd parboil
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

##../../../../data/srad/image.pgm needs to be there for srad_v1
#backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
cd $mother_dir
cd $configs_stor1
cd rodinia
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#MD QTC Reduction Scan Spmv Triad BFS
#Stencil2D
cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done
