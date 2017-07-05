#!/bin/sh

########################################

#cd $1
cd /stor2/hwang07/dim_modified_tsp/

#for i in $(ls -d *)
for i in coverage10_dynamic_tsp_nopc_size8_gto48 wp0_tsp_coverage10_gto48 wp6_tsp_coverage10_gto48
do

cd $i
qsub calculate_SRE_configbase_in01.pbs
cd ..

done