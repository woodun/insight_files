#!/bin/sh

cd /home/hwang07/stor2/coverage_dynamic_S

for dirs in `ls`
do

cd $dirs
sh setup_ALL.sh dirs
cd ..

done
