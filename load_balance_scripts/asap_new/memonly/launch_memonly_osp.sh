#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor1/hwang07/memonly_osp

for configs_stor1 in coverage5_dynamic_osp_nopc_size8_gto48_wattch_memonly wp0_osp_coverage5_gto48_wattch_memonly wp6_osp_coverage5_gto48_wattch_memonly coverage10_dynamic_osp_nopc_size8_gto48_wattch_memonly wp0_osp_coverage10_gto48_wattch_memonly wp6_osp_coverage10_gto48_wattch_memonly coverage15_dynamic_osp_nopc_size8_gto48_wattch_memonly wp0_osp_coverage15_gto48_wattch_memonly wp6_osp_coverage15_gto48_wattch_memonly coverage20_dynamic_osp_nopc_size8_gto48_wattch_memonly wp0_osp_coverage20_gto48_wattch_memonly wp6_osp_coverage20_gto48_wattch_memonly
do

#10
#binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
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
#not changed: 2DCONV 3DCONV ATAX BICG GESUMMV MVT SYR2K SYRK
#tsp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
#2DCONV 3DCONV 2MM 3MM ATAX BICG FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN
#GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: CONS TRA SCP SLA
#tsp not good: BlackScholes JPEG_ENCODE
#7 
#BlackScholes LPS RAY SCP SLA CONS TRA JPEG_ENCODE JPEG_DECODE
#SLA TRA SCP CONS
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SLA TRA SCP CONS
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#bfs bh dmr mst sp sssp
cd $mother_dir
cd $configs_stor1
cd lonestar
for benchmark in 
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
cd $mother_dir
cd $configs_stor1
cd Mars
for benchmark in 
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#cutcp histo mm sad spmv lbm tpacf
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
cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in 
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

done