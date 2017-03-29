#!/bin/sh

########################################
source_dir=/stor1/hwang07/insight_files/load_balance_scripts/address_stride_paper/new_figure15

#cd $1
cd /stor1/hwang07/coverage_dynamic_nopc_S/

for i in $(ls -d *)
#for i in 
do

cd $i
qsub calculate_SRE_configbase.pbs
cd ..

done