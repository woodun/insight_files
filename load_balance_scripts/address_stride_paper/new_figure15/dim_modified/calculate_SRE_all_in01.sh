#!/bin/sh

########################################

#cd $1
cd /stor1/hwang07/dim_modified_osp/

for i in $(ls -d *)
#for i in 
do

cd $i
qsub calculate_SRE_configbase_in01.pbs
cd ..

done