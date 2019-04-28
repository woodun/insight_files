#!/bin/sh

#####################################################
mother_dir=/sciclone/pscr/hwang07/bfloat_analysis

for number in 1 4 7 10 13 16 19 22 25 28 31
do

cat pbs_exp1_base_int_data.pbs | sed -e "s/TBD/uniform_int_one_side_exp$number/g" | sed -e "s/DBT/uniform_int_one_side_result$number/g" | sed -e "s|MOTHERDIR|$mother_dir|g" > $mother_dir/scripts_int/pbs_uniform_int_one_side_exp$number.pbs

cat pbs_exp1_base_int_data.pbs | sed -e "s/TBD/uniform_int_two_sides_exp$number/g" | sed -e "s/DBT/uniform_int_two_sides_result$number/g" | sed -e "s|MOTHERDIR|$mother_dir|g" > $mother_dir/scripts_int/pbs_uniform_int_two_sides_exp$number.pbs

cat pbs_exp1_base_int_data.pbs | sed -e "s/TBD/normal_int_one_side_exp$number/g" | sed -e "s/DBT/normal_int_one_side_result$number/g" | sed -e "s|MOTHERDIR|$mother_dir|g" > $mother_dir/scripts_int/pbs_normal_int_one_side_exp$number.pbs

cat pbs_exp1_base_int_data.pbs | sed -e "s/TBD/normal_int_two_sides_exp$number/g" | sed -e "s/DBT/normal_int_two_sides_result$number/g" | sed -e "s|MOTHERDIR|$mother_dir|g" > $mother_dir/scripts_int/pbs_normal_int_two_sides_exp$number.pbs

done
