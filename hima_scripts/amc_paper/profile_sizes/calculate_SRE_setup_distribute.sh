#!/bin/sh

########################################
source_dir=/stor1/hwang07/insight_files/hima_scripts/amc_paper/profile_sizes

#cd $1
cd /sciclone/data10/hwang07/GPU_RESEARCH/amc/remove_rs

for i in $(ls -d *)
#for i in 
do

cd $i

rm calculate_SRE_configbase.pbs
rm calculate_SRE_configbase.sh

cp $source_dir/calculate_SRE_configbase.pbs .
cp $source_dir/calculate_SRE_configbase.sh .
chmod +x calculate_SRE_configbase.sh
cd ..

done