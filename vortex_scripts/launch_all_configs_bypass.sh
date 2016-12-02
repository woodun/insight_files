#!/bin/sh

#specify your config path
configs_stor=/sciclone/data20/hwang07/bypass

#modify the configs you want to launch on machine in01
for stor_config in bypass_0coverage_gtoswl1 bypass_0coverage_gtoswl4 bypass_0coverage_gtoswl8 bypass_0coverage_gtoswl16 bypass_0coverage_gtoswl48 bypass_0coverage_lrrswl1 bypass_0coverage_lrrswl4 bypass_0coverage_lrrswl8 bypass_0coverage_lrrswl16 bypass_0coverage_lrrswl48 bypass_0coverage_RR1 bypass_0coverage_RR4 bypass_0coverage_RR8 bypass_0coverage_RR16 bypass_0coverage_RR48 bypass_125coverage_gtoswl1 bypass_125coverage_gtoswl4 bypass_125coverage_gtoswl8 bypass_125coverage_gtoswl16 bypass_125coverage_gtoswl48 bypass_125coverage_lrrswl1 bypass_125coverage_lrrswl4 bypass_125coverage_lrrswl8 bypass_125coverage_lrrswl16 bypass_125coverage_lrrswl48 bypass_125coverage_RR1 bypass_125coverage_RR4 bypass_125coverage_RR8 bypass_125coverage_RR16 bypass_125coverage_RR48 bypass_25coverage_gtoswl1 bypass_25coverage_gtoswl4 bypass_25coverage_gtoswl8 bypass_25coverage_gtoswl16 bypass_25coverage_gtoswl48 bypass_25coverage_lrrswl1 bypass_25coverage_lrrswl4 bypass_25coverage_lrrswl8 bypass_25coverage_lrrswl16 bypass_25coverage_lrrswl48 bypass_25coverage_RR1 bypass_25coverage_RR4 bypass_25coverage_RR8 bypass_25coverage_RR16 bypass_25coverage_RR48 bypass_50coverage_gtoswl1 bypass_50coverage_gtoswl4 bypass_50coverage_gtoswl8 bypass_50coverage_gtoswl16 bypass_50coverage_gtoswl48 bypass_50coverage_lrrswl1 bypass_50coverage_lrrswl4 bypass_50coverage_lrrswl8 bypass_50coverage_lrrswl16 bypass_50coverage_lrrswl48 bypass_50coverage_RR1 bypass_50coverage_RR4 bypass_50coverage_RR8 bypass_50coverage_RR16 bypass_50coverage_RR48 bypass_75coverage_gtoswl1 bypass_75coverage_gtoswl4 bypass_75coverage_gtoswl8 bypass_75coverage_gtoswl16 bypass_75coverage_gtoswl48 bypass_75coverage_lrrswl1 bypass_75coverage_lrrswl4 bypass_75coverage_lrrswl8 bypass_75coverage_lrrswl16 bypass_75coverage_lrrswl48 bypass_75coverage_RR1 bypass_75coverage_RR4 bypass_75coverage_RR8 bypass_75coverage_RR16 bypass_75coverage_RR48 bypass_100coverage_gtoswl1 bypass_100coverage_gtoswl4 bypass_100coverage_gtoswl8 bypass_100coverage_gtoswl16 bypass_100coverage_gtoswl48 bypass_100coverage_lrrswl1 bypass_100coverage_lrrswl4 bypass_100coverage_lrrswl8 bypass_100coverage_lrrswl16 bypass_100coverage_lrrswl48 bypass_100coverage_RR1 bypass_100coverage_RR4 bypass_100coverage_RR8 bypass_100coverage_RR16 bypass_100coverage_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
qsub pbs_$1.pbs
done