#!/bin/sh

########################################

#cd $1
cd /stor1/hwang07/dim_modified_osp/

#for i in $(ls -d *)
for i in coverage5_dynamic_osp_nopc_size8_gto48 coverage10_dynamic_osp_nopc_size8_gto48 coverage15_dynamic_osp_nopc_size8_gto48 coverage20_dynamic_osp_nopc_size8_gto48
do

cd $i
qsub calculate_SRE_configbase_in01.pbs
cd ..

done