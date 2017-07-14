#!/bin/sh

########################################


#cd $1
cd /stor2/hwang07/final_coverage_tsp/

for i in $(ls -d *)
#for i in 
do

cd $i
if [[ -s RE.e* ]]; then 
pwd
#pwd | xargs printf "%s " >> $output
else
echo 'ok'
fi
cd ..

done