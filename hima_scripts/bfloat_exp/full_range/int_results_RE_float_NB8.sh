#!/bin/sh

#####################################################better for visual comparison
output=/sciclone/pscr/hwang07/bfloat_analysis/collection/int_results_RE_float_NB8.txt
mother_dir=/sciclone/pscr/hwang07/bfloat_analysis/results_int_dbi

rm $output
cd $mother_dir


for number in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31
do

for statistics in 'sum_per_line_RE_float_NB8:'
do

grep "$statistics[ ]*[-eE\+0-9\.]*" uniform_int_two_sides_result$number.txt | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "%s " >> $output
printf "\r\n" >> $output

done #for statistics in

done #for number in




