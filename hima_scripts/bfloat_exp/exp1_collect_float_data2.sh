#!/bin/sh

#####################################################better for visual comparison
output=/sciclone/pscr/hwang07/bfloat_analysis/collection/all_results.txt
mother_dir=/sciclone/pscr/hwang07/bfloat_analysis/results

cd $mother_dir



for number in -126 -119 -112 -105 -98 -91 -84 -77 -70 -63 -56 -49 -42 -35 -28 -21 -14 -7 0 7 14 21 28 35 42 49 56 63 70 77 84 91 98 105 112 119 126
do

printf "range%s:\r\n" $number >> $output

printf "uniform_float_one_side:\r\n" >> $output
for statistics in 'bytes_ones_float:' 'bytes_ones_new:' 'bytes_flips_float:'  'bytes_flips_new:'
do
grep "$statistics[ ]*[-eE\+0-9\.]*" uniform_float_one_side_result$number.txt | xargs printf "%s " >> $output
printf "\r\n" >> $output
done #for statistics in

printf "normal_float_one_side:\r\n" >> $output
for statistics in 'bytes_ones_float:' 'bytes_ones_new:' 'bytes_flips_float:'  'bytes_flips_new:'
do
grep "$statistics[ ]*[-eE\+0-9\.]*" normal_float_one_side_result$number.txt | xargs printf "%s " >> $output
printf "\r\n" >> $output
done #for statistics in

printf "uniform_float_two_sides:\r\n" >> $output
for statistics in 'bytes_ones_float:' 'bytes_ones_new:' 'bytes_flips_float:'  'bytes_flips_new:'
do
grep "$statistics[ ]*[-eE\+0-9\.]*" uniform_float_two_sides_result$number.txt | xargs printf "%s " >> $output
printf "\r\n" >> $output
done #for statistics in

printf "normal_float_two_sides:\r\n" >> $output
for statistics in 'bytes_ones_float:' 'bytes_ones_new:' 'bytes_flips_float:'  'bytes_flips_new:'
do
grep "$statistics[ ]*[-eE\+0-9\.]*" normal_float_two_sides_result$number.txt | xargs printf "%s " >> $output
printf "\r\n" >> $output
done #for statistics in

printf "\r\n" >> $output

done #for number in




