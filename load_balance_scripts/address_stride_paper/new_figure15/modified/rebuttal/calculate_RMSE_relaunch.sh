#!/bin/sh

########################################

for i in 
do

cd $i


qsub calculate_RMSE_appbase_in02.pbs


cd ..

done
