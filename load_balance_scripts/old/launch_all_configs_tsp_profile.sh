#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/tsp_address_exp_gtoswl48_alloff
#cd tsp_address_exp_gtoswl48_alloff
#sh setup_ALL.sh tsp_address_exp_gtoswl48_alloff
###################################################################################

#specify your config path in stor1
configs_stor1=/stor1/hwang07/tsp_address_exp_gtoswl48_profile/

: <<'END'

cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM SYR2K FDTD-2D GRAMSCHM
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $configs_stor1
cd shoc
for benchmark in QTC Spmv BFS MD Triad Stencil2D Scan Reduction
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $configs_stor1
cd rodinia
for benchmark in nw lud srad_v1 srad_v2 hotspot pf_float backprop
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $configs_stor1
cd parboil
for benchmark in lbm spmv histo
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $configs_stor1
cd CUDA
for benchmark in SLA TRA SCP JPEG CONS FWT BlackScholes LPS RAY KMN CP BFS BFS2 NN kmeans
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $configs_stor1
cd Mars
for benchmark in PageViewCount MatrixMul PageViewRank WordCount InvertedIndex SimilarityScore Kmeans
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

END

cd $configs_stor1
cd CUDA
for benchmark in BlackScholes LPS RAY KMN CP BFS BFS2 NN kmeans
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done