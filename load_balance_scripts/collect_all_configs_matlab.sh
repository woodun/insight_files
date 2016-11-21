#not in use
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/approx/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/approx/

#specify your output file
output=/stor1/hwang07/profile/collect_matlab/$2_$1.txt

######################################################################ACT_percRelativeError_skipzero#########################
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | tail -1 | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

###############################################################################IPC#########################
printf "\n"
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

##########################################avg_line_relativeError#########################################################
printf "\n"
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n"
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done