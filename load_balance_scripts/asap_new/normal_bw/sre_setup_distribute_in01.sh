#!/bin/sh

########################################
source_dir=/stor1/hwang07/insight_files/load_balance_scripts/asap_new/normal_bw

#cd $1
cd /stor1/hwang07/nb_asap/coverages

for i in $(ls -d *)
#for i in 
do

cd $i

rm calculate_SRE_configbase_in01.pbs
rm calculate_SRE_configbase_in02.pbs
rm calculate_SRE_configbase.sh

cp $source_dir/calculate_SRE_configbase_in01.pbs .
cp $source_dir/calculate_SRE_configbase_in02.pbs .
cp $source_dir/calculate_SRE_configbase.sh .
chmod +x calculate_SRE_configbase.sh
cd ..

done