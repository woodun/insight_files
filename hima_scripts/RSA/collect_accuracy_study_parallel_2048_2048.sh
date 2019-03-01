#!/bin/sh

#specify your output file
output=/sciclone/pscr/hwang07/RSA_CUDA/accuracy_study_parallel/summary_2048_2048.txt
mother_dir=/sciclone/pscr/hwang07/RSA_CUDA/accuracy_study_parallel

cd $mother_dir

for statistics in 'vote_only: total count:' 'filter_only: total count:' 'filter_and_vote: total count:' 'no_means: total count:' 'always passed: total count:'
do
printf "%s\r\n" $statistics >> $output

for configs_stor1 in `ls 2048_volta_2048*`
do
printf "%s\r\n" $configs_stor1

grep "$statistics[ ]*[-eE\+0-9\.]*" $configs_stor1 | tail -1 | xargs printf "%s " >> $output

printf "\r\n" >> $output
done
######################################################################################################################################
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
done



