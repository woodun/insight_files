#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor1/hwang07/nb_asap/coverages

#coverage5_dynamic_tsp_nopc_size8_gto48_wattch1_nb wp0_tsp_coverage5_gto48_wattch1_nb wp6_tsp_coverage5_gto48_wattch1_nb coverage10_dynamic_tsp_nopc_size8_gto48_wattch1_nb wp0_tsp_coverage10_gto48_wattch1_nb wp6_tsp_coverage10_gto48_wattch1_nb coverage15_dynamic_tsp_nopc_size8_gto48_wattch1_nb wp0_tsp_coverage15_gto48_wattch1_nb wp6_tsp_coverage15_gto48_wattch1_nb
for configs_stor1 in coverage20_dynamic_tsp_nopc_size8_gto48_wattch1_nb wp0_tsp_coverage20_gto48_wattch1_nb wp6_tsp_coverage20_gto48_wattch1_nb
do

#####################################################################################################################
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
#added: ATAX BICG
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV ATAX BICG
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
#added: LPS
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SLA TRA SCP CONS LPS
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
for benchmark in Triad
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

done