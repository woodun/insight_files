#!/bin/sh

########################################

#cd $1
cd /stor2/hwang07/modified_tsp/

#coverage5_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_gto48_wattch1 coverage15_dynamic_tsp_nopc_size8_gto48_wattch1 coverage20_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_RR48 coverage20_dynamic_tsp_nopc_size8_RR48
#coverage5_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_gto48_wattch1 coverage15_dynamic_osp_nopc_size8_gto48_wattch1 coverage20_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_RR48 coverage20_dynamic_osp_nopc_size8_RR48

#for i in $(ls -d *)
for i in coverage5_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_gto48_wattch1 coverage15_dynamic_tsp_nopc_size8_gto48_wattch1 coverage20_dynamic_tsp_nopc_size8_gto48_wattch1 coverage10_dynamic_tsp_nopc_size8_RR48 coverage20_dynamic_tsp_nopc_size8_RR48 coverage5_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_gto48_wattch1 coverage15_dynamic_osp_nopc_size8_gto48_wattch1 coverage20_dynamic_osp_nopc_size8_gto48_wattch1 coverage10_dynamic_osp_nopc_size8_RR48 coverage20_dynamic_osp_nopc_size8_RR48
do

cd $i
qsub calculate_SRE_configbase_in02.pbs
cd ..

done