#!/bin/sh

########################################
source_dir=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_scripts/amc_paper/axbench_added/sre
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_dynamic_all

#cd $1
cd $mother_dir

for i in $(ls -d *)
#for i in 
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