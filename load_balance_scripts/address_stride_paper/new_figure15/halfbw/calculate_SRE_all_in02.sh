#!/bin/sh

########################################

#cd $1
cd /stor2/hwang07/halfbw_tsp/

#for i in $(ls -d *)
for i in halfbw_coverage5_dynamic_tsp_nopc_size8_gto48 halfbw_coverage10_dynamic_tsp_nopc_size8_gto48 halfbw_coverage15_dynamic_tsp_nopc_size8_gto48 halfbw_coverage20_dynamic_tsp_nopc_size8_gto48
do

cd $i
qsub calculate_SRE_configbase_in02.pbs
cd ..

done