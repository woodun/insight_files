#!/bin/sh

#####################################################
mother_dir=/sciclone/pscr/hwang07/bfloat_analysis/scripts_int_dbi

cd $mother_dir
for number in 1 4 7 10 13 16 19 22 25 28 31
do

qsub pbs_uniform_int_one_side_exp$number.pbs
qsub pbs_uniform_int_two_sides_exp$number.pbs
qsub pbs_normal_int_one_side_exp$number.pbs
qsub pbs_normal_int_two_sides_exp$number.pbs

done
