#!/bin/sh

########################################
mother_dir=/sciclone/pscr/hwang07/dsn_amc

#cd $1
cd $mother_dir

#for i in $(ls -d *)
for i in sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_baseline sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_removeall
do

cd $i
qsub calculate_SRE_configbase.pbs
#qsub calculate_SRE_configbase_sciclone.pbs
cd ..

done