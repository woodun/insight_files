#!/bin/sh

########################################

#cd $1
cd /stor1/hwang07/modified_osp/

#for i in $(ls -d *)
for i in coverage5_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage5_gto48 wp6_osp_coverage5_gto48 coverage10_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage10_gto48 wp6_osp_coverage10_gto48 coverage15_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage15_gto48 wp6_osp_coverage15_gto48 coverage20_dynamic_osp_nopc_size8_gto48 wp0_osp_coverage20_gto48 wp6_osp_coverage20_gto48 coverage10_dynamic_osp_nopc_size8_RR48 wp0_osp_coverage10_RR48 wp6_osp_coverage10_RR48 coverage20_dynamic_osp_nopc_size8_RR48 wp0_osp_coverage20_RR48 wp6_osp_coverage20_RR48
do

cd $i
qsub calculate_SRE_configbase_in01.pbs
cd ..

done