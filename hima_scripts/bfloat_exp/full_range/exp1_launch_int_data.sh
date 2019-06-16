#!/bin/sh

#####################################################
mother_dir=/sciclone/pscr/hwang07/bfloat_analysis/scripts_int

cd $mother_dir
for number in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31
do

qsub pbs_uniform_int_two_sides_exp$number.pbs

done
