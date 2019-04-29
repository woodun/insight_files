#!/bin/sh

#####################################################
mother_dir=/sciclone/pscr/hwang07/bfloat_analysis

for number in -126 -119 -112 -105 -98 -91 -84 -77 -70 -63 -56 -49 -42 -35 -28 -21 -14 -7 0 7 14 21 28 35 42 49 56 63 70 77 84 91 98 105 112 119 126
do

cat pbs_exp1_base_float_data_dbi.pbs | sed -e "s/TBD/uniform_float_one_side_exp$number/g" | sed -e "s/DBT/uniform_float_one_side_result$number/g" | sed -e "s|MOTHERDIR|$mother_dir|g" > $mother_dir/scripts_float_dbi/pbs_uniform_float_one_side_exp$number.pbs

cat pbs_exp1_base_float_data_dbi.pbs | sed -e "s/TBD/uniform_float_two_sides_exp$number/g" | sed -e "s/DBT/uniform_float_two_sides_result$number/g" | sed -e "s|MOTHERDIR|$mother_dir|g" > $mother_dir/scripts_float_dbi/pbs_uniform_float_two_sides_exp$number.pbs

cat pbs_exp1_base_float_data_dbi.pbs | sed -e "s/TBD/normal_float_one_side_exp$number/g" | sed -e "s/DBT/normal_float_one_side_result$number/g" | sed -e "s|MOTHERDIR|$mother_dir|g" > $mother_dir/scripts_float_dbi/pbs_normal_float_one_side_exp$number.pbs

cat pbs_exp1_base_float_data_dbi.pbs | sed -e "s/TBD/normal_float_two_sides_exp$number/g" | sed -e "s/DBT/normal_float_two_sides_result$number/g" | sed -e "s|MOTHERDIR|$mother_dir|g" > $mother_dir/scripts_float_dbi/pbs_normal_float_two_sides_exp$number.pbs

done
