#!/bin/sh

#####################################################better for visual comparison
output=/sciclone/pscr/hwang07/bfloat_analysis/collection/visual_all_results_int_dbi.txt
mother_dir=/sciclone/pscr/hwang07/bfloat_analysis/results_int_dbi

rm $output
cd $mother_dir


for number in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31
do

printf "#############################################range%s:\r\n" $number >> $output

for statistics in 'bytes_ones_int:' 'bytes_ones_float:' 'bytes_ones_new:' 'bytes_flips_int:' 'bytes_flips_float:'  'bytes_flips_new:' 'distribution8_ones_float:' 'distribution8_ones_int:' 'distribution8_ones_new:' 'distribution8_flips_int:' 'distribution8_flips_float:' 'distribution8_flips_new:'
do

grep "$statistics[ ]*[-eE\+0-9\.]*" uniform_int_two_sides_result$number.txt | xargs printf "%s " >> $output
printf "\r\n" >> $output

done #for statistics in

printf "\r\n" >> $output

done #for number in




