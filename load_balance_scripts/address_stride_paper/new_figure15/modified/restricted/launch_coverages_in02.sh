#!/bin/sh
#this one works with applications_modified

#####################################################launch in in01?
mother_dir=/stor2/hwang07/restricted_asap

for configs_stor1 in coverage100_dynamic_osp_nopc_size8_gto48 coverage100_dynamic_tsp_nopc_size8_gto48 dynamic_nopc_profile_gto48 osp_profile_gto48
do

#13
#not changed: ATAX BICG GESUMMV MVT SYR2K SYRK 2DCONV 3DCONV
#tsp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in ATAX BICG GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
qsub in02_pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: CONS TRA SCP SLA
#tsp not good: BlackScholes JPEG_ENCODE
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in LPS CONS SCP SLA
do
cd $benchmark
qsub in02_pbs_$benchmark.pbs
cd ..
done

done