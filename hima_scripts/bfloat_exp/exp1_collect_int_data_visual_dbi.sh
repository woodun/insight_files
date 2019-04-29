#!/bin/sh

#####################################################better for visual comparison
output=/sciclone/pscr/hwang07/bfloat_analysis/collection/all_results_int_dbi.txt
mother_dir=/sciclone/pscr/hwang07/bfloat_analysis/results_int_dbi

cd $mother_dir



for number in 1 4 7 10 13 16 19 22 25 28 31
do

printf "range%s:\r\n" $number >> $output

printf "uniform_int_one_side:\r\n" >> $output
for statistics in 'bytes_ones_float:' 'bytes_ones_new:' 'bytes_ones_int:' 'bytes_flips_float:'  'bytes_flips_new:' 'bytes_flips_int:'
do
grep "$statistics[ ]*[-eE\+0-9\.]*" uniform_int_one_side_result$number.txt | xargs printf "%s " >> $output
printf "\r\n" >> $output
done #for statistics in

printf "normal_int_one_side:\r\n" >> $output
for statistics in 'bytes_ones_float:' 'bytes_ones_new:' 'bytes_ones_int:' 'bytes_flips_float:'  'bytes_flips_new:' 'bytes_flips_int:'
do
grep "$statistics[ ]*[-eE\+0-9\.]*" normal_int_one_side_result$number.txt | xargs printf "%s " >> $output
printf "\r\n" >> $output
done #for statistics in

printf "uniform_int_two_sides:\r\n" >> $output
for statistics in 'bytes_ones_float:' 'bytes_ones_new:' 'bytes_ones_int:' 'bytes_flips_float:'  'bytes_flips_new:' 'bytes_flips_int:'
do
grep "$statistics[ ]*[-eE\+0-9\.]*" uniform_int_two_sides_result$number.txt | xargs printf "%s " >> $output
printf "\r\n" >> $output
done #for statistics in

printf "normal_int_two_sides:\r\n" >> $output
for statistics in 'bytes_ones_float:' 'bytes_ones_new:' 'bytes_ones_int:' 'bytes_flips_float:'  'bytes_flips_new:' 'bytes_flips_int:'
do
grep "$statistics[ ]*[-eE\+0-9\.]*" normal_int_two_sides_result$number.txt | xargs printf "%s " >> $output
printf "\r\n" >> $output
done #for statistics in

printf "\r\n" >> $output

done #for number in




