#!/bin/sh

#####################################################
mother_dir=/sciclone/pscr/hwang07/bfloat_analysis

for number in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31
do

cat pbs_exp1_base_int_data.pbs | sed -e "s/TBD/uniform_int_two_sides_exp$number/g" | sed -e "s/DBT/uniform_int_two_sides_result$number/g" | sed -e "s|MOTHERDIR|$mother_dir|g" > $mother_dir/scripts_int/pbs_uniform_int_two_sides_exp$number.pbs

done
