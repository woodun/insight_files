#!/bin/sh

########################################
source_dir=/stor1/hwang07/insight_files/load_balance_scripts/address_stride_paper/new_figure15/modified/rebuttal

#cd $1
cd /stor2/hwang07/modified_tsp/

for i in $(ls -d *)
#for i in 
do

cd $i

rm calculate_RMSE_configbase_in01.pbs
rm calculate_RMSE_configbase_in02.pbs
rm calculate_RMSE_configbase.sh

cp $source_dir/calculate_RMSE_configbase_in01.pbs .
cp $source_dir/calculate_RMSE_configbase_in02.pbs .
cp $source_dir/calculate_RMSE_configbase.sh .
chmod +x calculate_RMSE_configbase.sh
cd ..

done