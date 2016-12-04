#not in use
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/tsp/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/tsp/

#specify your output file
output=/stor1/hwang07/collect_tsp/$2_$1.txt

#############################################################################################miss rate after prediction:#####################
for stor1_config in bypass_0coverage_gtoswl1 bypass_0coverage_gtoswl4 bypass_0coverage_gtoswl8 bypass_0coverage_gtoswl16 bypass_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "miss rate after prediction:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/miss rate after prediction://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_lrrswl1 bypass_0coverage_lrrswl4 bypass_0coverage_lrrswl8 bypass_0coverage_lrrswl16 bypass_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "miss rate after prediction:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/miss rate after prediction://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_RR1 bypass_0coverage_RR4 bypass_0coverage_RR8 bypass_0coverage_RR16 bypass_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "miss rate after prediction:[eE\-\+0-9\.]*" output_* | tail -1 | sed -e "s/miss rate after prediction://g" | xargs printf "   %s " >> $output
done

#############################################################################################bw_util#####################
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

#############################################################################################avg_line_relativeError 0%####################
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

############################################################################################################IPC#####################
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

###########################################################################################ACT_percRelativeError_skipzero#########################
printf "\n" >> $output
for stor1_config in bypass_0coverage_gtoswl1 bypass_0coverage_gtoswl4 bypass_0coverage_gtoswl8 bypass_0coverage_gtoswl16 bypass_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_lrrswl1 bypass_0coverage_lrrswl4 bypass_0coverage_lrrswl8 bypass_0coverage_lrrswl16 bypass_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in bypass_0coverage_RR1 bypass_0coverage_RR4 bypass_0coverage_RR8 bypass_0coverage_RR16 bypass_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done