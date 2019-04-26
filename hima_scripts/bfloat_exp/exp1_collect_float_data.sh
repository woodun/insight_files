#!/bin/sh

#####################################################
output=/sciclone/pscr/hwang07/bfloat_analysis/collection/all_results.txt
mother_dir=/sciclone/pscr/hwang07/bfloat_analysis/results

cd $mother_dir

for statistics in 'actual coverage all:' 
do

printf "%s\r\n" $statistics >> $output

for number in -126 -119 -112 -105 -98 -91 -84 -77 -70 -63 -56 -49 -42 -35 -28 -21 -14 -7 0 7 14 21 28 35 42 49 56 63 70 77 84 91 98 105 112 119 126
do

grep "$statistics[ ]*[-eE\+0-9\.]*" uniform_float_one_side_result$number.txt | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
grep "$statistics[ ]*[-eE\+0-9\.]*" uniform_float_two_sides_result$number.txt | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
grep "$statistics[ ]*[-eE\+0-9\.]*" normal_float_one_side_result$number.txt | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
grep "$statistics[ ]*[-eE\+0-9\.]*" normal_float_two_sides_result$number.txt | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output

done #for number in

done #for statistics in

