#!/bin/sh
#this one works with applications_modified

#####################################################
mother_dir=/stor1/hwang07/final_accurate_osp

#specify your config path in stor1
for configs_stor1 in coverage10_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage10_gto48 wp6_osp_coverage10_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done

#####################################################
mother_dir=/stor2/hwang07/final_accurate_tsp

#specify your config path in stor1
for configs_stor1 in coverage10_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp6_tsp_coverage10_gto48
do

#13
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done