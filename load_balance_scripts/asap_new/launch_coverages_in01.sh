#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor1/hwang07/asap/coverages

#coverage5_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage5_gto48_wattch1 wp6_tsp_coverage5_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage10_gto48_wattch1 wp6_tsp_coverage10_gto48_wattch1 coverage15_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage15_gto48_wattch1 wp6_tsp_coverage15_gto48_wattch1
for configs_stor1 in coverage20_dynamic_tsp_nopc_size8_gto48_wattch1 wp0_tsp_coverage20_gto48_wattch1 wp6_tsp_coverage20_gto48_wattch1
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
#not changed: ATAX BICG GESUMMV MVT SYR2K SYRK 2DCONV 3DCONV
#tsp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
#GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
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
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in 
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#bfs bh dmr mst sp sssp
cd $mother_dir
cd $configs_stor1
cd lonestar
for benchmark in bfs bh dmr mst sp sssp
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
cd $mother_dir
cd $configs_stor1
cd Mars
for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#cutcp histo mm sad spmv lbm tpacf
cd $mother_dir
cd $configs_stor1
cd parboil
for benchmark in cutcp histo mm sad spmv lbm tpacf
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
cd $mother_dir
cd $configs_stor1
cd rodinia
for benchmark in backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

#MD QTC Reduction Scan Spmv Stencil2D Triad BFS
cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in MD QTC Reduction Scan Spmv Stencil2D Triad BFS
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

done