#!/bin/sh

########################################

#cd $1
cd /stor1/hwang07/halfbw_osp/

#for i in $(ls -d *)
for i in halfbw_coverage5_dynamic_osp_nopc_size8_gto48 halfbw_coverage10_dynamic_osp_nopc_size8_gto48 halfbw_coverage15_dynamic_osp_nopc_size8_gto48 halfbw_coverage20_dynamic_osp_nopc_size8_gto48
do

cd $i
qsub calculate_SRE_configbase_in01.pbs
cd ..

done