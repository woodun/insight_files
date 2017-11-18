#!/bin/sh

########################################

#cd $1

cd /stor1/hwang07/nb_asap/coverages

#for i in $(ls -d *)

for i in coverage20_dynamic_tsp_nopc_size8_gto48_wattch1_nb wp0_tsp_coverage20_gto48_wattch1_nb wp6_tsp_coverage20_gto48_wattch1_nb
do

cd $i
qsub calculate_SRE_configbase_in01.pbs
cd ..

done