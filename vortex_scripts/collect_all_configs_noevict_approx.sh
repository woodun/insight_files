#not in use
#!/bin/sh

#specify your config path
configs_stor=/sciclone/data20/hwang07/noevict/

#specify your output file
output=/sciclone/data20/hwang07/collect_noevict/$2_$1.txt

printf "\n\n%s" "#####################################coverage_noevict:0%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_gtoswl4 approx_0coverage_noevict_gtoswl8 approx_0coverage_noevict_gtoswl16 approx_0coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_lrrswl4 approx_0coverage_noevict_lrrswl8 approx_0coverage_noevict_lrrswl16 approx_0coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_RR4 approx_0coverage_noevict_RR8 approx_0coverage_noevict_RR16 approx_0coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_STL4 approx_0coverage_noevict_STL8 approx_0coverage_noevict_STL16 approx_0coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_tl1 approx_0coverage_noevict_tl4 approx_0coverage_noevict_tl8 approx_0coverage_noevict_tl16 approx_0coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:12.5%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_gtoswl4 approx_125coverage_noevict_gtoswl8 approx_125coverage_noevict_gtoswl16 approx_125coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_lrrswl4 approx_125coverage_noevict_lrrswl8 approx_125coverage_noevict_lrrswl16 approx_125coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_RR4 approx_125coverage_noevict_RR8 approx_125coverage_noevict_RR16 approx_125coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_STL4 approx_125coverage_noevict_STL8 approx_125coverage_noevict_STL16 approx_125coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_tl1 approx_125coverage_noevict_tl4 approx_125coverage_noevict_tl8 approx_125coverage_noevict_tl16 approx_125coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:25%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_gtoswl4 approx_25coverage_noevict_gtoswl8 approx_25coverage_noevict_gtoswl16 approx_25coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_lrrswl4 approx_25coverage_noevict_lrrswl8 approx_25coverage_noevict_lrrswl16 approx_25coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_RR4 approx_25coverage_noevict_RR8 approx_25coverage_noevict_RR16 approx_25coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_STL4 approx_25coverage_noevict_STL8 approx_25coverage_noevict_STL16 approx_25coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_tl1 approx_25coverage_noevict_tl4 approx_25coverage_noevict_tl8 approx_25coverage_noevict_tl16 approx_25coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:50%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_gtoswl4 approx_50coverage_noevict_gtoswl8 approx_50coverage_noevict_gtoswl16 approx_50coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_lrrswl4 approx_50coverage_noevict_lrrswl8 approx_50coverage_noevict_lrrswl16 approx_50coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_RR4 approx_50coverage_noevict_RR8 approx_50coverage_noevict_RR16 approx_50coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_STL4 approx_50coverage_noevict_STL8 approx_50coverage_noevict_STL16 approx_50coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_tl1 approx_50coverage_noevict_tl4 approx_50coverage_noevict_tl8 approx_50coverage_noevict_tl16 approx_50coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:75%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_gtoswl4 approx_75coverage_noevict_gtoswl8 approx_75coverage_noevict_gtoswl16 approx_75coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_lrrswl4 approx_75coverage_noevict_lrrswl8 approx_75coverage_noevict_lrrswl16 approx_75coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_RR4 approx_75coverage_noevict_RR8 approx_75coverage_noevict_RR16 approx_75coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_STL4 approx_75coverage_noevict_STL8 approx_75coverage_noevict_STL16 approx_75coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_tl1 approx_75coverage_noevict_tl4 approx_75coverage_noevict_tl8 approx_75coverage_noevict_tl16 approx_75coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:100%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_gtoswl4 approx_100coverage_noevict_gtoswl8 approx_100coverage_noevict_gtoswl16 approx_100coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_lrrswl4 approx_100coverage_noevict_lrrswl8 approx_100coverage_noevict_lrrswl16 approx_100coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_RR4 approx_100coverage_noevict_RR8 approx_100coverage_noevict_RR16 approx_100coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_STL4 approx_100coverage_noevict_STL8 approx_100coverage_noevict_STL16 approx_100coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_tl1 approx_100coverage_noevict_tl4 approx_100coverage_noevict_tl8 approx_100coverage_noevict_tl16 approx_100coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

######################################################################################################################################################################################################
######################################################################################################################################################################################################

printf "\n\n%s" "#####################################coverage_noevict:0%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_gtoswl4 approx_0coverage_noevict_gtoswl8 approx_0coverage_noevict_gtoswl16 approx_0coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_lrrswl4 approx_0coverage_noevict_lrrswl8 approx_0coverage_noevict_lrrswl16 approx_0coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_RR4 approx_0coverage_noevict_RR8 approx_0coverage_noevict_RR16 approx_0coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_STL4 approx_0coverage_noevict_STL8 approx_0coverage_noevict_STL16 approx_0coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_tl1 approx_0coverage_noevict_tl4 approx_0coverage_noevict_tl8 approx_0coverage_noevict_tl16 approx_0coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:12.5%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_gtoswl4 approx_125coverage_noevict_gtoswl8 approx_125coverage_noevict_gtoswl16 approx_125coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_lrrswl4 approx_125coverage_noevict_lrrswl8 approx_125coverage_noevict_lrrswl16 approx_125coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_RR4 approx_125coverage_noevict_RR8 approx_125coverage_noevict_RR16 approx_125coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_STL4 approx_125coverage_noevict_STL8 approx_125coverage_noevict_STL16 approx_125coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_tl1 approx_125coverage_noevict_tl4 approx_125coverage_noevict_tl8 approx_125coverage_noevict_tl16 approx_125coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:25%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_gtoswl4 approx_25coverage_noevict_gtoswl8 approx_25coverage_noevict_gtoswl16 approx_25coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_lrrswl4 approx_25coverage_noevict_lrrswl8 approx_25coverage_noevict_lrrswl16 approx_25coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_RR4 approx_25coverage_noevict_RR8 approx_25coverage_noevict_RR16 approx_25coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_STL4 approx_25coverage_noevict_STL8 approx_25coverage_noevict_STL16 approx_25coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_tl1 approx_25coverage_noevict_tl4 approx_25coverage_noevict_tl8 approx_25coverage_noevict_tl16 approx_25coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:50%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_gtoswl4 approx_50coverage_noevict_gtoswl8 approx_50coverage_noevict_gtoswl16 approx_50coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_lrrswl4 approx_50coverage_noevict_lrrswl8 approx_50coverage_noevict_lrrswl16 approx_50coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_RR4 approx_50coverage_noevict_RR8 approx_50coverage_noevict_RR16 approx_50coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_STL4 approx_50coverage_noevict_STL8 approx_50coverage_noevict_STL16 approx_50coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_tl1 approx_50coverage_noevict_tl4 approx_50coverage_noevict_tl8 approx_50coverage_noevict_tl16 approx_50coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:75%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_gtoswl4 approx_75coverage_noevict_gtoswl8 approx_75coverage_noevict_gtoswl16 approx_75coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_lrrswl4 approx_75coverage_noevict_lrrswl8 approx_75coverage_noevict_lrrswl16 approx_75coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_RR4 approx_75coverage_noevict_RR8 approx_75coverage_noevict_RR16 approx_75coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_STL4 approx_75coverage_noevict_STL8 approx_75coverage_noevict_STL16 approx_75coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_tl1 approx_75coverage_noevict_tl4 approx_75coverage_noevict_tl8 approx_75coverage_noevict_tl16 approx_75coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:100%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_gtoswl4 approx_100coverage_noevict_gtoswl8 approx_100coverage_noevict_gtoswl16 approx_100coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_lrrswl4 approx_100coverage_noevict_lrrswl8 approx_100coverage_noevict_lrrswl16 approx_100coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_RR4 approx_100coverage_noevict_RR8 approx_100coverage_noevict_RR16 approx_100coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_STL4 approx_100coverage_noevict_STL8 approx_100coverage_noevict_STL16 approx_100coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_tl1 approx_100coverage_noevict_tl4 approx_100coverage_noevict_tl8 approx_100coverage_noevict_tl16 approx_100coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

######################################################################################################################################################################################################
######################################################################################################################################################################################################

printf "\n\n%s" "#####################################coverage_noevict:0%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_gtoswl4 approx_0coverage_noevict_gtoswl8 approx_0coverage_noevict_gtoswl16 approx_0coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_lrrswl4 approx_0coverage_noevict_lrrswl8 approx_0coverage_noevict_lrrswl16 approx_0coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_RR4 approx_0coverage_noevict_RR8 approx_0coverage_noevict_RR16 approx_0coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_STL4 approx_0coverage_noevict_STL8 approx_0coverage_noevict_STL16 approx_0coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_tl1 approx_0coverage_noevict_tl4 approx_0coverage_noevict_tl8 approx_0coverage_noevict_tl16 approx_0coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:12.5%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_gtoswl4 approx_125coverage_noevict_gtoswl8 approx_125coverage_noevict_gtoswl16 approx_125coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_lrrswl4 approx_125coverage_noevict_lrrswl8 approx_125coverage_noevict_lrrswl16 approx_125coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_RR4 approx_125coverage_noevict_RR8 approx_125coverage_noevict_RR16 approx_125coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_STL4 approx_125coverage_noevict_STL8 approx_125coverage_noevict_STL16 approx_125coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_tl1 approx_125coverage_noevict_tl4 approx_125coverage_noevict_tl8 approx_125coverage_noevict_tl16 approx_125coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:25%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_gtoswl4 approx_25coverage_noevict_gtoswl8 approx_25coverage_noevict_gtoswl16 approx_25coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_lrrswl4 approx_25coverage_noevict_lrrswl8 approx_25coverage_noevict_lrrswl16 approx_25coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_RR4 approx_25coverage_noevict_RR8 approx_25coverage_noevict_RR16 approx_25coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_STL4 approx_25coverage_noevict_STL8 approx_25coverage_noevict_STL16 approx_25coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_tl1 approx_25coverage_noevict_tl4 approx_25coverage_noevict_tl8 approx_25coverage_noevict_tl16 approx_25coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:50%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_gtoswl4 approx_50coverage_noevict_gtoswl8 approx_50coverage_noevict_gtoswl16 approx_50coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_lrrswl4 approx_50coverage_noevict_lrrswl8 approx_50coverage_noevict_lrrswl16 approx_50coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_RR4 approx_50coverage_noevict_RR8 approx_50coverage_noevict_RR16 approx_50coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_STL4 approx_50coverage_noevict_STL8 approx_50coverage_noevict_STL16 approx_50coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_tl1 approx_50coverage_noevict_tl4 approx_50coverage_noevict_tl8 approx_50coverage_noevict_tl16 approx_50coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:75%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_gtoswl4 approx_75coverage_noevict_gtoswl8 approx_75coverage_noevict_gtoswl16 approx_75coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_lrrswl4 approx_75coverage_noevict_lrrswl8 approx_75coverage_noevict_lrrswl16 approx_75coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_RR4 approx_75coverage_noevict_RR8 approx_75coverage_noevict_RR16 approx_75coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_STL4 approx_75coverage_noevict_STL8 approx_75coverage_noevict_STL16 approx_75coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_tl1 approx_75coverage_noevict_tl4 approx_75coverage_noevict_tl8 approx_75coverage_noevict_tl16 approx_75coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:100%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_gtoswl4 approx_100coverage_noevict_gtoswl8 approx_100coverage_noevict_gtoswl16 approx_100coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_lrrswl4 approx_100coverage_noevict_lrrswl8 approx_100coverage_noevict_lrrswl16 approx_100coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_RR4 approx_100coverage_noevict_RR8 approx_100coverage_noevict_RR16 approx_100coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_STL4 approx_100coverage_noevict_STL8 approx_100coverage_noevict_STL16 approx_100coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_tl1 approx_100coverage_noevict_tl4 approx_100coverage_noevict_tl8 approx_100coverage_noevict_tl16 approx_100coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

######################################################################################################################################################################################################
######################################################################################################################################################################################################

printf "\n\n%s" "#####################################coverage_noevict:0%######real_coverage_noevict##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_gtoswl4 approx_0coverage_noevict_gtoswl8 approx_0coverage_noevict_gtoswl16 approx_0coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_lrrswl4 approx_0coverage_noevict_lrrswl8 approx_0coverage_noevict_lrrswl16 approx_0coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_RR4 approx_0coverage_noevict_RR8 approx_0coverage_noevict_RR16 approx_0coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_STL4 approx_0coverage_noevict_STL8 approx_0coverage_noevict_STL16 approx_0coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_tl1 approx_0coverage_noevict_tl4 approx_0coverage_noevict_tl8 approx_0coverage_noevict_tl16 approx_0coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:12.5%######real_coverage_noevict##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_gtoswl4 approx_125coverage_noevict_gtoswl8 approx_125coverage_noevict_gtoswl16 approx_125coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_lrrswl4 approx_125coverage_noevict_lrrswl8 approx_125coverage_noevict_lrrswl16 approx_125coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_RR4 approx_125coverage_noevict_RR8 approx_125coverage_noevict_RR16 approx_125coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_STL4 approx_125coverage_noevict_STL8 approx_125coverage_noevict_STL16 approx_125coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_tl1 approx_125coverage_noevict_tl4 approx_125coverage_noevict_tl8 approx_125coverage_noevict_tl16 approx_125coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:25%######real_coverage_noevict##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_gtoswl4 approx_25coverage_noevict_gtoswl8 approx_25coverage_noevict_gtoswl16 approx_25coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_lrrswl4 approx_25coverage_noevict_lrrswl8 approx_25coverage_noevict_lrrswl16 approx_25coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_RR4 approx_25coverage_noevict_RR8 approx_25coverage_noevict_RR16 approx_25coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_STL4 approx_25coverage_noevict_STL8 approx_25coverage_noevict_STL16 approx_25coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_tl1 approx_25coverage_noevict_tl4 approx_25coverage_noevict_tl8 approx_25coverage_noevict_tl16 approx_25coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:50%######real_coverage_noevict##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_gtoswl4 approx_50coverage_noevict_gtoswl8 approx_50coverage_noevict_gtoswl16 approx_50coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_lrrswl4 approx_50coverage_noevict_lrrswl8 approx_50coverage_noevict_lrrswl16 approx_50coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_RR4 approx_50coverage_noevict_RR8 approx_50coverage_noevict_RR16 approx_50coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_STL4 approx_50coverage_noevict_STL8 approx_50coverage_noevict_STL16 approx_50coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_tl1 approx_50coverage_noevict_tl4 approx_50coverage_noevict_tl8 approx_50coverage_noevict_tl16 approx_50coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:75%######real_coverage_noevict##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_gtoswl4 approx_75coverage_noevict_gtoswl8 approx_75coverage_noevict_gtoswl16 approx_75coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_lrrswl4 approx_75coverage_noevict_lrrswl8 approx_75coverage_noevict_lrrswl16 approx_75coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_RR4 approx_75coverage_noevict_RR8 approx_75coverage_noevict_RR16 approx_75coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_STL4 approx_75coverage_noevict_STL8 approx_75coverage_noevict_STL16 approx_75coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_tl1 approx_75coverage_noevict_tl4 approx_75coverage_noevict_tl8 approx_75coverage_noevict_tl16 approx_75coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:100%######real_coverage_noevict##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_gtoswl4 approx_100coverage_noevict_gtoswl8 approx_100coverage_noevict_gtoswl16 approx_100coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_lrrswl4 approx_100coverage_noevict_lrrswl8 approx_100coverage_noevict_lrrswl16 approx_100coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_RR4 approx_100coverage_noevict_RR8 approx_100coverage_noevict_RR16 approx_100coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_STL4 approx_100coverage_noevict_STL8 approx_100coverage_noevict_STL16 approx_100coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_tl1 approx_100coverage_noevict_tl4 approx_100coverage_noevict_tl8 approx_100coverage_noevict_tl16 approx_100coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "coverage_noevict_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_noevict_any_percent://g" | xargs printf "   %s " >> $output
done

######################################################################################################################################################################################################
######################################################################################################################################################################################################

printf "\n\n%s" "#####################################coverage_noevict:0%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_gtoswl4 approx_0coverage_noevict_gtoswl8 approx_0coverage_noevict_gtoswl16 approx_0coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_lrrswl4 approx_0coverage_noevict_lrrswl8 approx_0coverage_noevict_lrrswl16 approx_0coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_RR4 approx_0coverage_noevict_RR8 approx_0coverage_noevict_RR16 approx_0coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_STL4 approx_0coverage_noevict_STL8 approx_0coverage_noevict_STL16 approx_0coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_0coverage_noevict_tl1 approx_0coverage_noevict_tl4 approx_0coverage_noevict_tl8 approx_0coverage_noevict_tl16 approx_0coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:12.5%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_gtoswl4 approx_125coverage_noevict_gtoswl8 approx_125coverage_noevict_gtoswl16 approx_125coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_lrrswl4 approx_125coverage_noevict_lrrswl8 approx_125coverage_noevict_lrrswl16 approx_125coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_RR4 approx_125coverage_noevict_RR8 approx_125coverage_noevict_RR16 approx_125coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_STL4 approx_125coverage_noevict_STL8 approx_125coverage_noevict_STL16 approx_125coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_125coverage_noevict_tl1 approx_125coverage_noevict_tl4 approx_125coverage_noevict_tl8 approx_125coverage_noevict_tl16 approx_125coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:25%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_gtoswl4 approx_25coverage_noevict_gtoswl8 approx_25coverage_noevict_gtoswl16 approx_25coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_lrrswl4 approx_25coverage_noevict_lrrswl8 approx_25coverage_noevict_lrrswl16 approx_25coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_RR4 approx_25coverage_noevict_RR8 approx_25coverage_noevict_RR16 approx_25coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_STL4 approx_25coverage_noevict_STL8 approx_25coverage_noevict_STL16 approx_25coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_25coverage_noevict_tl1 approx_25coverage_noevict_tl4 approx_25coverage_noevict_tl8 approx_25coverage_noevict_tl16 approx_25coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:50%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_gtoswl4 approx_50coverage_noevict_gtoswl8 approx_50coverage_noevict_gtoswl16 approx_50coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_lrrswl4 approx_50coverage_noevict_lrrswl8 approx_50coverage_noevict_lrrswl16 approx_50coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_RR4 approx_50coverage_noevict_RR8 approx_50coverage_noevict_RR16 approx_50coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_STL4 approx_50coverage_noevict_STL8 approx_50coverage_noevict_STL16 approx_50coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_50coverage_noevict_tl1 approx_50coverage_noevict_tl4 approx_50coverage_noevict_tl8 approx_50coverage_noevict_tl16 approx_50coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:75%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_gtoswl4 approx_75coverage_noevict_gtoswl8 approx_75coverage_noevict_gtoswl16 approx_75coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_lrrswl4 approx_75coverage_noevict_lrrswl8 approx_75coverage_noevict_lrrswl16 approx_75coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_RR4 approx_75coverage_noevict_RR8 approx_75coverage_noevict_RR16 approx_75coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_STL4 approx_75coverage_noevict_STL8 approx_75coverage_noevict_STL16 approx_75coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_75coverage_noevict_tl1 approx_75coverage_noevict_tl4 approx_75coverage_noevict_tl8 approx_75coverage_noevict_tl16 approx_75coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage_noevict:100%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_gtoswl4 approx_100coverage_noevict_gtoswl8 approx_100coverage_noevict_gtoswl16 approx_100coverage_noevict_gtoswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_lrrswl4 approx_100coverage_noevict_lrrswl8 approx_100coverage_noevict_lrrswl16 approx_100coverage_noevict_lrrswl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_RR4 approx_100coverage_noevict_RR8 approx_100coverage_noevict_RR16 approx_100coverage_noevict_RR48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_STL4 approx_100coverage_noevict_STL8 approx_100coverage_noevict_STL16 approx_100coverage_noevict_STL48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor_config in approx_100coverage_noevict_tl1 approx_100coverage_noevict_tl4 approx_100coverage_noevict_tl8 approx_100coverage_noevict_tl16 approx_100coverage_noevict_tl48
do
cd $configs_stor
cd $stor_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

