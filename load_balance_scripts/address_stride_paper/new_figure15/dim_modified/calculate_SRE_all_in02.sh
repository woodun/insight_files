#!/bin/sh

########################################

#cd $1
cd /stor2/hwang07/dim_modified_tsp/

for i in $(ls -d *)
#for i in 
do

cd $i
qsub calculate_SRE_configbase_in02.pbs
cd ..

done