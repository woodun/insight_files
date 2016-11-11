#!/bin/sh

#specify your config path in stor2
configs_stor2=/stor2/hwang07/approx/

#modify the configs you want to launch on machine in01, use this sh on machine in01
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48 approx_50coverage_lrrswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48 approx_50coverage_RR1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48 approx_50coverage_STL1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48 approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48 approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48 approx_75coverage_lrrswl1 approx_75coverage_lrrswl4 approx_75coverage_lrrswl8 approx_75coverage_lrrswl16 approx_75coverage_lrrswl48 approx_75coverage_RR1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48 approx_75coverage_STL1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48 approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48 approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48 approx_100coverage_lrrswl1 approx_100coverage_lrrswl4 approx_100coverage_lrrswl8 approx_100coverage_lrrswl16 approx_100coverage_lrrswl48 approx_100coverage_RR1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48 approx_100coverage_STL1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48 approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48
do
cd $configs_stor2
cd $stor2_config
sh setup_ALL.sh $stor2_config
done
