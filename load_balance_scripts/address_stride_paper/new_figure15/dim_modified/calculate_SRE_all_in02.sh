#!/bin/sh

########################################

#cd $1
cd /stor2/hwang07/dim_modified_tsp/

#for i in $(ls -d *)
for i in coverage5_dynamic_tsp_nopc_size8_gto48 coverage10_dynamic_tsp_nopc_size8_gto48 coverage15_dynamic_tsp_nopc_size8_gto48 coverage20_dynamic_tsp_nopc_size8_gto48
do

cd $i
qsub calculate_SRE_configbase_in02.pbs
cd ..

done