#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor2/hwang07/asap/coverages

for configs_stor1 in coverage5_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage5_gto48_wattch1 wp6_osp_coverage5_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage10_gto48_wattch1 wp6_osp_coverage10_gto48_wattch1 coverage15_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage15_gto48_wattch1 wp6_osp_coverage15_gto48_wattch1 coverage20_dynamic_osp_nopc_size8_gto48_wattch1 wp0_osp_coverage20_gto48_wattch1 wp6_osp_coverage20_gto48_wattch1
do

#10
#binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in binarization
do
cd $benchmark
qsub in02_pbs_$benchmark.pbs
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
qsub in02_pbs_$benchmark.pbs
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
qsub in02_pbs_$benchmark.pbs
cd ..
done

done