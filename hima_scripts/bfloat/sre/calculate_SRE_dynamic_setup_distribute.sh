#!/bin/sh

########################################
source_dir=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_scripts/bfloat/sre
mother_dir=/sciclone/pscr/hwang07/bfloat_exp

#cd $1
cd $mother_dir

#for i in $(ls -d *)
for i in sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_baseline sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_removeall
do

cd $i

rm calculate_SRE_configbase.pbs
rm calculate_SRE_configbase.sh
rm calculate_SRE_configbase_sciclone.pbs

cp $source_dir/calculate_SRE_configbase.pbs .
cp $source_dir/calculate_SRE_configbase.sh .
cp $source_dir/calculate_SRE_configbase_sciclone.pbs .
chmod +x calculate_SRE_configbase.sh
cd ..

done