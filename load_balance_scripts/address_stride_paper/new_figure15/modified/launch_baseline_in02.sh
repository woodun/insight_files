#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor2/hwang07/modified_baseline

for configs_stor1 in tsp_address_exp_gtoswl48_alloff
do

#13
#not changed: 2DCONV 3DCONV ATAX BICG GESUMMV MVT SYR2K SYRK
#tsp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV 3DCONV 2MM 3MM ATAX BICG CORR COVAR FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: CONS TRA SCP SLA
#tsp not good: BlackScholes JPEG_ENCODE
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in BlackScholes CP LIB LPS NQU RAY STO SCP SLA CONS FWT TRA lulesh AES BFS MUM NN kmeans JPEG BFS2 KMN JPEG_ENCODE JPEG_DECODE
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd lonestar
for benchmark in bfs bh dmr mst sp sssp
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd Mars
for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd parboil
for benchmark in cutcp histo mm sad spmv lbm tpacf
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

##../../../../data/srad/image.pgm needs to be there for srad_v1
cd $mother_dir
cd $configs_stor1
cd rodinia
for benchmark in backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in MD QTC Reduction Scan Spmv Stencil2D Triad BFS
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done