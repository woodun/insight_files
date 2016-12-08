#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/plot2/plot2_125gto48
#cd tsp_address_exp_gtoswl48_profile
#sh setup_ALL.sh approx_125coverage_gtoswl48
###################################################################################

#specify your config path in stor1
#configs_stor1=/stor1/hwang07/tsp_address_exp_gtoswl48_profile/

for configs_stor1 in /stor1/hwang07/plot2/plot2_125gto48 /stor1/hwang07/plot2/plot2_25gto48 /stor1/hwang07/plot2/plot2_50gto48 /stor1/hwang07/plot2/plot2_75gto48
do

#3MM
#cd $configs_stor1
#cd polybench
#for benchmark in GESUMMV MVT 2MM SYRK ATAX BICG 2DCONV 3DCONV GEMM SYR2K FDTD-2D GRAMSCHM
#do
#cd $benchmark
#qsub pbs_$benchmark.pbs
#cd ..
#done

#Triad
cd $configs_stor1
cd shoc
for benchmark in QTC Spmv MD Stencil2D Scan Reduction
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#srad_v1 backprop lud hotspot
cd $configs_stor1
cd rodinia
for benchmark in nw srad_v2 pf_float
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

# histo
cd $configs_stor1
cd parboil
for benchmark in lbm spmv
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#SLA CP TRA SCP CONS FWT LPS KMN
cd $configs_stor1
cd CUDA
for benchmark in JPEG RAY NN kmeans BlackScholes
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

done