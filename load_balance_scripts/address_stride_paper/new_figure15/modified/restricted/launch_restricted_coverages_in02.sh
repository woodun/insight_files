#!/bin/sh
#this one works with applications_modified

#####################################################launch in in01?
mother_dir=/stor2/hwang07/restricted_asap

#osp_profile_gto48
for configs_stor1 in coverage5_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_gto48_wattch1 coverage15_dynamic_osp_nopc_size8_gto48_wattch1 coverage20_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_RR48 coverage20_dynamic_osp_nopc_size8_RR48 coverage100_dynamic_osp_nopc_size8_RR48
do

#ATAX BICG GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
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

#LPS CONS SCP SLA
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