#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor1/hwang07/halfbw_osp

#coverage100_dynamic_osp_nopc_size8_gto48 coverage10_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage10_gto48 wp6_osp_coverage10_gto48
#coverage100_dynamic_osp_nopc_size8_RR48 coverage20_dynamic_osp_nopc_size8_RR48 coverage10_dynamic_osp_nopc_size8_RR48 coverage15_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage15_gto48 wp6_osp_coverage15_gto48 coverage5_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage5_gto48 wp6_osp_coverage5_gto48
#coverage20_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage20_gto48 wp6_osp_coverage20_gto48
for configs_stor1 in halfbw_tsp_address_exp_gtoswl48_alloff halfbw_coverage5_dynamic_osp_nopc_size8_gto48 halfbw_coverage10_dynamic_osp_nopc_size8_gto48 halfbw_coverage15_dynamic_osp_nopc_size8_gto48 halfbw_coverage20_dynamic_osp_nopc_size8_gto48
do

#13
#not changed: ATAX BICG GESUMMV MVT SYR2K SYRK 2DCONV 3DCONV
#osp not good: GEMM FDTD-2D 2MM 3MM GRAMSCHM
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#not changed: CONS TRA SCP SLA
#osp not good: BlackScholes JPEG_ENCODE
#7
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SLA TRA CONS SCP
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done