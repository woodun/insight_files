#!/bin/sh
#this one use applications_modified

template=/stor1/hwang07/insight_files/insight_template

#####################################################################################
mother_dir=/stor2/hwang07/restricted_asap

#dynamic_noold_nopc_size1_gto48 dynamic_noold_nopc_size2_gto48 dynamic_noold_nopc_size3_gto48 dynamic_noold_nopc_size4_gto48 dynamic_noold_nopc_size5_gto48 dynamic_noold_nopc_size6_gto48 dynamic_noold_nopc_size7_gto48 dynamic_noold_nopc_size8_gto48 dynamic_noold_nopc_size9_gto48 dynamic_noold_nopc_size10_gto48

for configs_stor1 in dynamic_noold_nopc_size2_gto48 dynamic_noold_nopc_size4_gto48 dynamic_noold_nopc_size6_gto48 dynamic_noold_nopc_size8_gto48 dynamic_noold_nopc_size10_gto48
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done







