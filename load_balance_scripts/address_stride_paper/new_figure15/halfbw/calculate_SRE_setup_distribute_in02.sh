#!/bin/sh

########################################
source_dir=/stor1/hwang07/insight_files/load_balance_scripts/address_stride_paper/new_figure15

#cd $1
cd /stor2/hwang07/halfbw_tsp/

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