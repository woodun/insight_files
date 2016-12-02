#not in use
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/bypass/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/bypass/

#specify your output file
output=/stor1/hwang07/profile/collect_bypass/$2_$1.txt

#############################################################################################bw_util#####################
#################################################################bw_util 0%#####################
for stor1_config in bypass_0coverage_gtoswl1 bypass_0coverage_gtoswl4 bypass_0coverage_gtoswl8 bypass_0coverage_gtoswl16 bypass_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_lrrswl1 bypass_0coverage_lrrswl4 bypass_0coverage_lrrswl8 bypass_0coverage_lrrswl16 bypass_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_RR1 bypass_0coverage_RR4 bypass_0coverage_RR8 bypass_0coverage_RR16 bypass_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#################################################################bw_util 12.5%#####################
printf "\n" >> $output
for stor1_config in bypass_125coverage_gtoswl1 bypass_125coverage_gtoswl4 bypass_125coverage_gtoswl8 bypass_125coverage_gtoswl16 bypass_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_125coverage_lrrswl1 bypass_125coverage_lrrswl4 bypass_125coverage_lrrswl8 bypass_125coverage_lrrswl16 bypass_125coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_125coverage_RR1 bypass_125coverage_RR4 bypass_125coverage_RR8 bypass_125coverage_RR16 bypass_125coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#################################################################bw_util 25%#####################
printf "\n" >> $output
for stor1_config in bypass_25coverage_gtoswl1 bypass_25coverage_gtoswl4 bypass_25coverage_gtoswl8 bypass_25coverage_gtoswl16 bypass_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_25coverage_lrrswl1 bypass_25coverage_lrrswl4 bypass_25coverage_lrrswl8 bypass_25coverage_lrrswl16 bypass_25coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_25coverage_RR1 bypass_25coverage_RR4 bypass_25coverage_RR8 bypass_25coverage_RR16 bypass_25coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#################################################################bw_util 50%#####################
printf "\n" >> $output
for stor1_config in bypass_50coverage_gtoswl1 bypass_50coverage_gtoswl4 bypass_50coverage_gtoswl8 bypass_50coverage_gtoswl16 bypass_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_50coverage_lrrswl1 bypass_50coverage_lrrswl4 bypass_50coverage_lrrswl8 bypass_50coverage_lrrswl16 bypass_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_50coverage_RR1 bypass_50coverage_RR4 bypass_50coverage_RR8 bypass_50coverage_RR16 bypass_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#################################################################bw_util 75%#####################
printf "\n" >> $output
for stor1_config in bypass_75coverage_gtoswl1 bypass_75coverage_gtoswl4 bypass_75coverage_gtoswl8 bypass_75coverage_gtoswl16 bypass_75coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_75coverage_lrrswl1 bypass_75coverage_lrrswl4 bypass_75coverage_lrrswl8 bypass_75coverage_lrrswl16 bypass_75coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_75coverage_RR1 bypass_75coverage_RR4 bypass_75coverage_RR8 bypass_75coverage_RR16 bypass_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#################################################################bw_util 100%#####################
printf "\n" >> $output
for stor1_config in bypass_100coverage_gtoswl1 bypass_100coverage_gtoswl4 bypass_100coverage_gtoswl8 bypass_100coverage_gtoswl16 bypass_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_100coverage_lrrswl1 bypass_100coverage_lrrswl4 bypass_100coverage_lrrswl8 bypass_100coverage_lrrswl16 bypass_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_100coverage_RR1 bypass_100coverage_RR4 bypass_100coverage_RR8 bypass_100coverage_RR16 bypass_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#############################################################################################avg_line_relativeError 0%####################
################################################avg_line_relativeError 0%####################
printf "\n" >> $output
for stor1_config in bypass_0coverage_gtoswl1 bypass_0coverage_gtoswl4 bypass_0coverage_gtoswl8 bypass_0coverage_gtoswl16 bypass_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_lrrswl1 bypass_0coverage_lrrswl4 bypass_0coverage_lrrswl8 bypass_0coverage_lrrswl16 bypass_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_RR1 bypass_0coverage_RR4 bypass_0coverage_RR8 bypass_0coverage_RR16 bypass_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

################################################avg_line_relativeError 12.5%####################
printf "\n" >> $output
for stor1_config in bypass_125coverage_gtoswl1 bypass_125coverage_gtoswl4 bypass_125coverage_gtoswl8 bypass_125coverage_gtoswl16 bypass_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_125coverage_lrrswl1 bypass_125coverage_lrrswl4 bypass_125coverage_lrrswl8 bypass_125coverage_lrrswl16 bypass_125coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_125coverage_RR1 bypass_125coverage_RR4 bypass_125coverage_RR8 bypass_125coverage_RR16 bypass_125coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

################################################avg_line_relativeError 25%####################
printf "\n" >> $output
for stor1_config in bypass_25coverage_gtoswl1 bypass_25coverage_gtoswl4 bypass_25coverage_gtoswl8 bypass_25coverage_gtoswl16 bypass_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_25coverage_lrrswl1 bypass_25coverage_lrrswl4 bypass_25coverage_lrrswl8 bypass_25coverage_lrrswl16 bypass_25coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_25coverage_RR1 bypass_25coverage_RR4 bypass_25coverage_RR8 bypass_25coverage_RR16 bypass_25coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

################################################avg_line_relativeError 50%####################
printf "\n" >> $output
for stor1_config in bypass_50coverage_gtoswl1 bypass_50coverage_gtoswl4 bypass_50coverage_gtoswl8 bypass_50coverage_gtoswl16 bypass_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_50coverage_lrrswl1 bypass_50coverage_lrrswl4 bypass_50coverage_lrrswl8 bypass_50coverage_lrrswl16 bypass_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_50coverage_RR1 bypass_50coverage_RR4 bypass_50coverage_RR8 bypass_50coverage_RR16 bypass_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

################################################avg_line_relativeError 75%####################
printf "\n" >> $output
for stor1_config in bypass_75coverage_gtoswl1 bypass_75coverage_gtoswl4 bypass_75coverage_gtoswl8 bypass_75coverage_gtoswl16 bypass_75coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_75coverage_lrrswl1 bypass_75coverage_lrrswl4 bypass_75coverage_lrrswl8 bypass_75coverage_lrrswl16 bypass_75coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_75coverage_RR1 bypass_75coverage_RR4 bypass_75coverage_RR8 bypass_75coverage_RR16 bypass_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

################################################avg_line_relativeError 100%####################
printf "\n" >> $output
for stor1_config in bypass_100coverage_gtoswl1 bypass_100coverage_gtoswl4 bypass_100coverage_gtoswl8 bypass_100coverage_gtoswl16 bypass_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_100coverage_lrrswl1 bypass_100coverage_lrrswl4 bypass_100coverage_lrrswl8 bypass_100coverage_lrrswl16 bypass_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_100coverage_RR1 bypass_100coverage_RR4 bypass_100coverage_RR8 bypass_100coverage_RR16 bypass_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

############################################################################################################IPC#####################
#################################################################IPC 0%#####################
printf "\n" >> $output
for stor1_config in bypass_0coverage_gtoswl1 bypass_0coverage_gtoswl4 bypass_0coverage_gtoswl8 bypass_0coverage_gtoswl16 bypass_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_lrrswl1 bypass_0coverage_lrrswl4 bypass_0coverage_lrrswl8 bypass_0coverage_lrrswl16 bypass_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_RR1 bypass_0coverage_RR4 bypass_0coverage_RR8 bypass_0coverage_RR16 bypass_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#################################################################IPC 12.5%#####################
printf "\n" >> $output
for stor1_config in bypass_125coverage_gtoswl1 bypass_125coverage_gtoswl4 bypass_125coverage_gtoswl8 bypass_125coverage_gtoswl16 bypass_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_125coverage_lrrswl1 bypass_125coverage_lrrswl4 bypass_125coverage_lrrswl8 bypass_125coverage_lrrswl16 bypass_125coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_125coverage_RR1 bypass_125coverage_RR4 bypass_125coverage_RR8 bypass_125coverage_RR16 bypass_125coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#################################################################IPC 25%#####################
printf "\n" >> $output
for stor1_config in bypass_25coverage_gtoswl1 bypass_25coverage_gtoswl4 bypass_25coverage_gtoswl8 bypass_25coverage_gtoswl16 bypass_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_25coverage_lrrswl1 bypass_25coverage_lrrswl4 bypass_25coverage_lrrswl8 bypass_25coverage_lrrswl16 bypass_25coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_25coverage_RR1 bypass_25coverage_RR4 bypass_25coverage_RR8 bypass_25coverage_RR16 bypass_25coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#################################################################IPC 50%#####################
printf "\n" >> $output
for stor1_config in bypass_50coverage_gtoswl1 bypass_50coverage_gtoswl4 bypass_50coverage_gtoswl8 bypass_50coverage_gtoswl16 bypass_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_50coverage_lrrswl1 bypass_50coverage_lrrswl4 bypass_50coverage_lrrswl8 bypass_50coverage_lrrswl16 bypass_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_50coverage_RR1 bypass_50coverage_RR4 bypass_50coverage_RR8 bypass_50coverage_RR16 bypass_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#################################################################IPC 75%#####################
printf "\n" >> $output
for stor1_config in bypass_75coverage_gtoswl1 bypass_75coverage_gtoswl4 bypass_75coverage_gtoswl8 bypass_75coverage_gtoswl16 bypass_75coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_75coverage_lrrswl1 bypass_75coverage_lrrswl4 bypass_75coverage_lrrswl8 bypass_75coverage_lrrswl16 bypass_75coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_75coverage_RR1 bypass_75coverage_RR4 bypass_75coverage_RR8 bypass_75coverage_RR16 bypass_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#################################################################IPC 100%#####################
printf "\n" >> $output
for stor1_config in bypass_100coverage_gtoswl1 bypass_100coverage_gtoswl4 bypass_100coverage_gtoswl8 bypass_100coverage_gtoswl16 bypass_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_100coverage_lrrswl1 bypass_100coverage_lrrswl4 bypass_100coverage_lrrswl8 bypass_100coverage_lrrswl16 bypass_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_100coverage_RR1 bypass_100coverage_RR4 bypass_100coverage_RR8 bypass_100coverage_RR16 bypass_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

###########################################################################################RMSE#########################
##########################################RMSE 0%#############
printf "\n" >> $output
for stor1_config in bypass_0coverage_gtoswl1 bypass_0coverage_gtoswl4 bypass_0coverage_gtoswl8 bypass_0coverage_gtoswl16 bypass_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_lrrswl1 bypass_0coverage_lrrswl4 bypass_0coverage_lrrswl8 bypass_0coverage_lrrswl16 bypass_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_RR1 bypass_0coverage_RR4 bypass_0coverage_RR8 bypass_0coverage_RR16 bypass_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

##########################################RMSE 12.5%#############
printf "\n" >> $output
for stor1_config in bypass_125coverage_gtoswl1 bypass_125coverage_gtoswl4 bypass_125coverage_gtoswl8 bypass_125coverage_gtoswl16 bypass_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_125coverage_lrrswl1 bypass_125coverage_lrrswl4 bypass_125coverage_lrrswl8 bypass_125coverage_lrrswl16 bypass_125coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_125coverage_RR1 bypass_125coverage_RR4 bypass_125coverage_RR8 bypass_125coverage_RR16 bypass_125coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

##########################################RMSE 25%#############
printf "\n" >> $output
for stor1_config in bypass_25coverage_gtoswl1 bypass_25coverage_gtoswl4 bypass_25coverage_gtoswl8 bypass_25coverage_gtoswl16 bypass_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_25coverage_lrrswl1 bypass_25coverage_lrrswl4 bypass_25coverage_lrrswl8 bypass_25coverage_lrrswl16 bypass_25coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_25coverage_RR1 bypass_25coverage_RR4 bypass_25coverage_RR8 bypass_25coverage_RR16 bypass_25coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

##########################################RMSE 50%#############
printf "\n" >> $output
for stor1_config in bypass_50coverage_gtoswl1 bypass_50coverage_gtoswl4 bypass_50coverage_gtoswl8 bypass_50coverage_gtoswl16 bypass_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_50coverage_lrrswl1 bypass_50coverage_lrrswl4 bypass_50coverage_lrrswl8 bypass_50coverage_lrrswl16 bypass_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_50coverage_RR1 bypass_50coverage_RR4 bypass_50coverage_RR8 bypass_50coverage_RR16 bypass_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

##########################################RMSE 75%#############
printf "\n" >> $output
for stor1_config in bypass_75coverage_gtoswl1 bypass_75coverage_gtoswl4 bypass_75coverage_gtoswl8 bypass_75coverage_gtoswl16 bypass_75coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_75coverage_lrrswl1 bypass_75coverage_lrrswl4 bypass_75coverage_lrrswl8 bypass_75coverage_lrrswl16 bypass_75coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_75coverage_RR1 bypass_75coverage_RR4 bypass_75coverage_RR8 bypass_75coverage_RR16 bypass_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

##########################################RMSE 100%#############
printf "\n" >> $output
for stor1_config in bypass_100coverage_gtoswl1 bypass_100coverage_gtoswl4 bypass_100coverage_gtoswl8 bypass_100coverage_gtoswl16 bypass_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_100coverage_lrrswl1 bypass_100coverage_lrrswl4 bypass_100coverage_lrrswl8 bypass_100coverage_lrrswl16 bypass_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_100coverage_RR1 bypass_100coverage_RR4 bypass_100coverage_RR8 bypass_100coverage_RR16 bypass_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "([0-9\.]*" tmp.err | sed -e "s/(//g" | xargs printf "%s " >> $output
done
