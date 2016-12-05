#not in use
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/tsp/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/tsp/

#specify your output file
output=/stor1/hwang07/collect_tsp/$2_$1.txt

#############################################################################################bw_util#####################
#############################################################with cache 0
for stor1_config in tsp_address_exp_gtoswl1 tsp_address_exp_gtoswl4 tsp_address_exp_gtoswl8 tsp_address_exp_gtoswl16 tsp_address_exp_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_exp_lrrswl1 tsp_address_exp_lrrswl4 tsp_address_exp_lrrswl8 tsp_address_exp_lrrswl16 tsp_address_exp_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_exp_RR1 tsp_address_exp_RR4 tsp_address_exp_RR8 tsp_address_exp_RR16 tsp_address_exp_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#############################################################with cache 100
for stor1_config in tsp_address_gtoswl1 tsp_address_gtoswl4 tsp_address_gtoswl8 tsp_address_gtoswl16 tsp_address_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_lrrswl1 tsp_address_lrrswl4 tsp_address_lrrswl8 tsp_address_lrrswl16 tsp_address_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_RR1 tsp_address_RR4 tsp_address_RR8 tsp_address_RR16 tsp_address_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#############################################################no cache 0
for stor1_config in nocache_tsp_address_exp_gtoswl1 nocache_tsp_address_exp_gtoswl4 nocache_tsp_address_exp_gtoswl8 nocache_tsp_address_exp_gtoswl16 nocache_tsp_address_exp_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_exp_lrrswl1 nocache_tsp_address_exp_lrrswl4 nocache_tsp_address_exp_lrrswl8 nocache_tsp_address_exp_lrrswl16 nocache_tsp_address_exp_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_exp_RR1 nocache_tsp_address_exp_RR4 nocache_tsp_address_exp_RR8 nocache_tsp_address_exp_RR16 nocache_tsp_address_exp_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#############################################################no cache 100
for stor1_config in nocache_tsp_address_gtoswl1 nocache_tsp_address_gtoswl4 nocache_tsp_address_gtoswl8 nocache_tsp_address_gtoswl16 nocache_tsp_address_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_lrrswl1 nocache_tsp_address_lrrswl4 nocache_tsp_address_lrrswl8 nocache_tsp_address_lrrswl16 nocache_tsp_address_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_RR1 nocache_tsp_address_RR4 nocache_tsp_address_RR8 nocache_tsp_address_RR16 nocache_tsp_address_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#############################################################################################avg_line_relativeError 0%####################
#############################################################with cache 0
for stor1_config in tsp_address_exp_gtoswl1 tsp_address_exp_gtoswl4 tsp_address_exp_gtoswl8 tsp_address_exp_gtoswl16 tsp_address_exp_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_exp_lrrswl1 tsp_address_exp_lrrswl4 tsp_address_exp_lrrswl8 tsp_address_exp_lrrswl16 tsp_address_exp_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_exp_RR1 tsp_address_exp_RR4 tsp_address_exp_RR8 tsp_address_exp_RR16 tsp_address_exp_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

#############################################################with cache 100
for stor1_config in tsp_address_gtoswl1 tsp_address_gtoswl4 tsp_address_gtoswl8 tsp_address_gtoswl16 tsp_address_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_lrrswl1 tsp_address_lrrswl4 tsp_address_lrrswl8 tsp_address_lrrswl16 tsp_address_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_RR1 tsp_address_RR4 tsp_address_RR8 tsp_address_RR16 tsp_address_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

#############################################################no cache 0
for stor1_config in nocache_tsp_address_exp_gtoswl1 nocache_tsp_address_exp_gtoswl4 nocache_tsp_address_exp_gtoswl8 nocache_tsp_address_exp_gtoswl16 nocache_tsp_address_exp_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_exp_lrrswl1 nocache_tsp_address_exp_lrrswl4 nocache_tsp_address_exp_lrrswl8 nocache_tsp_address_exp_lrrswl16 nocache_tsp_address_exp_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_exp_RR1 nocache_tsp_address_exp_RR4 nocache_tsp_address_exp_RR8 nocache_tsp_address_exp_RR16 nocache_tsp_address_exp_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

#############################################################no cache 100
for stor1_config in nocache_tsp_address_gtoswl1 nocache_tsp_address_gtoswl4 nocache_tsp_address_gtoswl8 nocache_tsp_address_gtoswl16 nocache_tsp_address_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_lrrswl1 nocache_tsp_address_lrrswl4 nocache_tsp_address_lrrswl8 nocache_tsp_address_lrrswl16 nocache_tsp_address_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_RR1 nocache_tsp_address_RR4 nocache_tsp_address_RR8 nocache_tsp_address_RR16 nocache_tsp_address_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

############################################################################################################IPC#####################
#############################################################with cache 0
for stor1_config in tsp_address_exp_gtoswl1 tsp_address_exp_gtoswl4 tsp_address_exp_gtoswl8 tsp_address_exp_gtoswl16 tsp_address_exp_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_exp_lrrswl1 tsp_address_exp_lrrswl4 tsp_address_exp_lrrswl8 tsp_address_exp_lrrswl16 tsp_address_exp_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_exp_RR1 tsp_address_exp_RR4 tsp_address_exp_RR8 tsp_address_exp_RR16 tsp_address_exp_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#############################################################with cache 100
for stor1_config in tsp_address_gtoswl1 tsp_address_gtoswl4 tsp_address_gtoswl8 tsp_address_gtoswl16 tsp_address_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_lrrswl1 tsp_address_lrrswl4 tsp_address_lrrswl8 tsp_address_lrrswl16 tsp_address_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_RR1 tsp_address_RR4 tsp_address_RR8 tsp_address_RR16 tsp_address_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#############################################################no cache 0
for stor1_config in nocache_tsp_address_exp_gtoswl1 nocache_tsp_address_exp_gtoswl4 nocache_tsp_address_exp_gtoswl8 nocache_tsp_address_exp_gtoswl16 nocache_tsp_address_exp_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_exp_lrrswl1 nocache_tsp_address_exp_lrrswl4 nocache_tsp_address_exp_lrrswl8 nocache_tsp_address_exp_lrrswl16 nocache_tsp_address_exp_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_exp_RR1 nocache_tsp_address_exp_RR4 nocache_tsp_address_exp_RR8 nocache_tsp_address_exp_RR16 nocache_tsp_address_exp_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#############################################################no cache 100
for stor1_config in nocache_tsp_address_gtoswl1 nocache_tsp_address_gtoswl4 nocache_tsp_address_gtoswl8 nocache_tsp_address_gtoswl16 nocache_tsp_address_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_lrrswl1 nocache_tsp_address_lrrswl4 nocache_tsp_address_lrrswl8 nocache_tsp_address_lrrswl16 nocache_tsp_address_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_RR1 nocache_tsp_address_RR4 nocache_tsp_address_RR8 nocache_tsp_address_RR16 nocache_tsp_address_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

###########################################################################################ACT_percRelativeError_skipzero#########################
#############################################################with cache 0
for stor1_config in tsp_address_exp_gtoswl1 tsp_address_exp_gtoswl4 tsp_address_exp_gtoswl8 tsp_address_exp_gtoswl16 tsp_address_exp_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_exp_lrrswl1 tsp_address_exp_lrrswl4 tsp_address_exp_lrrswl8 tsp_address_exp_lrrswl16 tsp_address_exp_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_exp_RR1 tsp_address_exp_RR4 tsp_address_exp_RR8 tsp_address_exp_RR16 tsp_address_exp_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

#############################################################with cache 100
for stor1_config in tsp_address_gtoswl1 tsp_address_gtoswl4 tsp_address_gtoswl8 tsp_address_gtoswl16 tsp_address_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_lrrswl1 tsp_address_lrrswl4 tsp_address_lrrswl8 tsp_address_lrrswl16 tsp_address_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in tsp_address_RR1 tsp_address_RR4 tsp_address_RR8 tsp_address_RR16 tsp_address_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

#############################################################no cache 0
for stor1_config in nocache_tsp_address_exp_gtoswl1 nocache_tsp_address_exp_gtoswl4 nocache_tsp_address_exp_gtoswl8 nocache_tsp_address_exp_gtoswl16 nocache_tsp_address_exp_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_exp_lrrswl1 nocache_tsp_address_exp_lrrswl4 nocache_tsp_address_exp_lrrswl8 nocache_tsp_address_exp_lrrswl16 nocache_tsp_address_exp_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_exp_RR1 nocache_tsp_address_exp_RR4 nocache_tsp_address_exp_RR8 nocache_tsp_address_exp_RR16 nocache_tsp_address_exp_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

#############################################################no cache 100
for stor1_config in nocache_tsp_address_gtoswl1 nocache_tsp_address_gtoswl4 nocache_tsp_address_gtoswl8 nocache_tsp_address_gtoswl16 nocache_tsp_address_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_lrrswl1 nocache_tsp_address_lrrswl4 nocache_tsp_address_lrrswl8 nocache_tsp_address_lrrswl16 nocache_tsp_address_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in nocache_tsp_address_RR1 nocache_tsp_address_RR4 nocache_tsp_address_RR8 nocache_tsp_address_RR16 nocache_tsp_address_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done