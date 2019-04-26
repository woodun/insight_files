#!/bin/sh

#####################################################
mother_dir=/sciclone/pscr/hwang07/bfloat_analysis/scripts

cd $mother_dir
for number in -126 -119 -112 -105 -98 -91 -84 -77 -70 -63 -56 -49 -42 -35 -28 -21 -14 -7 0 7 14 21 28 35 42 49 56 63 70 77 84 91 98 105 112 119 126
do

qsub pbs_uniform_float_one_side_exp$number.pbs
qsub pbs_uniform_float_two_sides_exp$number.pbs
qsub pbs_normal_float_one_side_exp$number.pbs
qsub pbs_normal_float_two_sides_exp$number.pbs

done
