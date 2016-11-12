#not in use
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/approx/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/approx/

#specify your output file
output=/stor1/hwang07/profile/collect/$2_$1.txt

printf "\n\n%s" "#####################################coverage:0%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_lrr1 approx_0coverage_lrr4 approx_0coverage_lrr8 approx_0coverage_lrr16 approx_0coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_RR1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_STL1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage:12.5%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_125coverage_gtoswl1 approx_125coverage_gtoswl4 approx_125coverage_gtoswl8 approx_125coverage_gtoswl16 approx_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_lrr1 approx_125coverage_lrr4 approx_125coverage_lrr8 approx_125coverage_lrr16 approx_125coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_RR1 approx_125coverage_RR4 approx_125coverage_RR8 approx_125coverage_RR16 approx_125coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_STL1 approx_125coverage_STL4 approx_125coverage_STL8 approx_125coverage_STL16 approx_125coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_tl1 approx_125coverage_tl4 approx_125coverage_tl8 approx_125coverage_tl16 approx_125coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage:25%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_25coverage_gtoswl1 approx_25coverage_gtoswl4 approx_25coverage_gtoswl8 approx_25coverage_gtoswl16 approx_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_lrr1 approx_25coverage_lrr4 approx_25coverage_lrr8 approx_25coverage_lrr16 approx_25coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_RR1 approx_25coverage_RR4 approx_25coverage_RR8 approx_25coverage_RR16 approx_25coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_STL1 approx_25coverage_STL4 approx_25coverage_STL8 approx_25coverage_STL16 approx_25coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_tl1 approx_25coverage_tl4 approx_25coverage_tl8 approx_25coverage_tl16 approx_25coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage:50%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_lrr1 approx_50coverage_lrr4 approx_50coverage_lrr8 approx_50coverage_lrr16 approx_50coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_RR1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_STL1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage:75%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_lrr1 approx_75coverage_lrr4 approx_75coverage_lrr8 approx_75coverage_lrr16 approx_75coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_RR1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_STL1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage:100%######ACT_percRelativeError_skipzero##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_lrr1 approx_100coverage_lrr4 approx_100coverage_lrr8 approx_100coverage_lrr16 approx_100coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_RR1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_STL1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

######################################################################################################################################################################################################
######################################################################################################################################################################################################

printf "\n\n%s" "#####################################coverage:0%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_lrr1 approx_0coverage_lrr4 approx_0coverage_lrr8 approx_0coverage_lrr16 approx_0coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_RR1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_STL1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage:12.5%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_125coverage_gtoswl1 approx_125coverage_gtoswl4 approx_125coverage_gtoswl8 approx_125coverage_gtoswl16 approx_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_lrr1 approx_125coverage_lrr4 approx_125coverage_lrr8 approx_125coverage_lrr16 approx_125coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_RR1 approx_125coverage_RR4 approx_125coverage_RR8 approx_125coverage_RR16 approx_125coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_STL1 approx_125coverage_STL4 approx_125coverage_STL8 approx_125coverage_STL16 approx_125coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_tl1 approx_125coverage_tl4 approx_125coverage_tl8 approx_125coverage_tl16 approx_125coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage:25%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_25coverage_gtoswl1 approx_25coverage_gtoswl4 approx_25coverage_gtoswl8 approx_25coverage_gtoswl16 approx_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_lrr1 approx_25coverage_lrr4 approx_25coverage_lrr8 approx_25coverage_lrr16 approx_25coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_RR1 approx_25coverage_RR4 approx_25coverage_RR8 approx_25coverage_RR16 approx_25coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_STL1 approx_25coverage_STL4 approx_25coverage_STL8 approx_25coverage_STL16 approx_25coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_tl1 approx_25coverage_tl4 approx_25coverage_tl8 approx_25coverage_tl16 approx_25coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage:50%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_lrr1 approx_50coverage_lrr4 approx_50coverage_lrr8 approx_50coverage_lrr16 approx_50coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_RR1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_STL1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage:75%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_lrr1 approx_75coverage_lrr4 approx_75coverage_lrr8 approx_75coverage_lrr16 approx_75coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_RR1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_STL1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "#####################################coverage:100%######IPC##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_lrr1 approx_100coverage_lrr4 approx_100coverage_lrr8 approx_100coverage_lrr16 approx_100coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_RR1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_STL1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

######################################################################################################################################################################################################
######################################################################################################################################################################################################

printf "\n\n%s" "#####################################coverage:0%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_lrr1 approx_0coverage_lrr4 approx_0coverage_lrr8 approx_0coverage_lrr16 approx_0coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_RR1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_STL1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:12.5%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_125coverage_gtoswl1 approx_125coverage_gtoswl4 approx_125coverage_gtoswl8 approx_125coverage_gtoswl16 approx_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_lrr1 approx_125coverage_lrr4 approx_125coverage_lrr8 approx_125coverage_lrr16 approx_125coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_RR1 approx_125coverage_RR4 approx_125coverage_RR8 approx_125coverage_RR16 approx_125coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_STL1 approx_125coverage_STL4 approx_125coverage_STL8 approx_125coverage_STL16 approx_125coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_tl1 approx_125coverage_tl4 approx_125coverage_tl8 approx_125coverage_tl16 approx_125coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:25%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_25coverage_gtoswl1 approx_25coverage_gtoswl4 approx_25coverage_gtoswl8 approx_25coverage_gtoswl16 approx_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_lrr1 approx_25coverage_lrr4 approx_25coverage_lrr8 approx_25coverage_lrr16 approx_25coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_RR1 approx_25coverage_RR4 approx_25coverage_RR8 approx_25coverage_RR16 approx_25coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_STL1 approx_25coverage_STL4 approx_25coverage_STL8 approx_25coverage_STL16 approx_25coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_tl1 approx_25coverage_tl4 approx_25coverage_tl8 approx_25coverage_tl16 approx_25coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:50%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_lrr1 approx_50coverage_lrr4 approx_50coverage_lrr8 approx_50coverage_lrr16 approx_50coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_RR1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_STL1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:75%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_lrr1 approx_75coverage_lrr4 approx_75coverage_lrr8 approx_75coverage_lrr16 approx_75coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_RR1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_STL1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:100%######bw_util##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_lrr1 approx_100coverage_lrr4 approx_100coverage_lrr8 approx_100coverage_lrr16 approx_100coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_RR1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_STL1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

######################################################################################################################################################################################################
######################################################################################################################################################################################################

printf "\n\n%s" "#####################################coverage:0%######real_coverage##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_lrr1 approx_0coverage_lrr4 approx_0coverage_lrr8 approx_0coverage_lrr16 approx_0coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_RR1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_STL1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:12.5%######real_coverage##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_125coverage_gtoswl1 approx_125coverage_gtoswl4 approx_125coverage_gtoswl8 approx_125coverage_gtoswl16 approx_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_lrr1 approx_125coverage_lrr4 approx_125coverage_lrr8 approx_125coverage_lrr16 approx_125coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_RR1 approx_125coverage_RR4 approx_125coverage_RR8 approx_125coverage_RR16 approx_125coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_STL1 approx_125coverage_STL4 approx_125coverage_STL8 approx_125coverage_STL16 approx_125coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_tl1 approx_125coverage_tl4 approx_125coverage_tl8 approx_125coverage_tl16 approx_125coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:25%######real_coverage##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_25coverage_gtoswl1 approx_25coverage_gtoswl4 approx_25coverage_gtoswl8 approx_25coverage_gtoswl16 approx_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_lrr1 approx_25coverage_lrr4 approx_25coverage_lrr8 approx_25coverage_lrr16 approx_25coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_RR1 approx_25coverage_RR4 approx_25coverage_RR8 approx_25coverage_RR16 approx_25coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_STL1 approx_25coverage_STL4 approx_25coverage_STL8 approx_25coverage_STL16 approx_25coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_tl1 approx_25coverage_tl4 approx_25coverage_tl8 approx_25coverage_tl16 approx_25coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:50%######real_coverage##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_lrr1 approx_50coverage_lrr4 approx_50coverage_lrr8 approx_50coverage_lrr16 approx_50coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_RR1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_STL1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:75%######real_coverage##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_lrr1 approx_75coverage_lrr4 approx_75coverage_lrr8 approx_75coverage_lrr16 approx_75coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_RR1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_STL1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:100%######real_coverage##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_lrr1 approx_100coverage_lrr4 approx_100coverage_lrr8 approx_100coverage_lrr16 approx_100coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_RR1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_STL1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "coverage_any_percent:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/coverage_any_percent://g" | xargs printf "   %s " >> $output
done

######################################################################################################################################################################################################
######################################################################################################################################################################################################

printf "\n\n%s" "#####################################coverage:0%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_lrr1 approx_0coverage_lrr4 approx_0coverage_lrr8 approx_0coverage_lrr16 approx_0coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_RR1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_STL1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:12.5%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_125coverage_gtoswl1 approx_125coverage_gtoswl4 approx_125coverage_gtoswl8 approx_125coverage_gtoswl16 approx_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_lrr1 approx_125coverage_lrr4 approx_125coverage_lrr8 approx_125coverage_lrr16 approx_125coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_RR1 approx_125coverage_RR4 approx_125coverage_RR8 approx_125coverage_RR16 approx_125coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_STL1 approx_125coverage_STL4 approx_125coverage_STL8 approx_125coverage_STL16 approx_125coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_125coverage_tl1 approx_125coverage_tl4 approx_125coverage_tl8 approx_125coverage_tl16 approx_125coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:25%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_25coverage_gtoswl1 approx_25coverage_gtoswl4 approx_25coverage_gtoswl8 approx_25coverage_gtoswl16 approx_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_lrr1 approx_25coverage_lrr4 approx_25coverage_lrr8 approx_25coverage_lrr16 approx_25coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_RR1 approx_25coverage_RR4 approx_25coverage_RR8 approx_25coverage_RR16 approx_25coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_STL1 approx_25coverage_STL4 approx_25coverage_STL8 approx_25coverage_STL16 approx_25coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_25coverage_tl1 approx_25coverage_tl4 approx_25coverage_tl8 approx_25coverage_tl16 approx_25coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:50%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_lrr1 approx_50coverage_lrr4 approx_50coverage_lrr8 approx_50coverage_lrr16 approx_50coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_RR1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_STL1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:75%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_lrr1 approx_75coverage_lrr4 approx_75coverage_lrr8 approx_75coverage_lrr16 approx_75coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_RR1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_STL1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "#####################################coverage:100%######avg_line_relativeError##########################################################" >> $output
printf "\n%s\n" "swl:           1        4          8          16          48" >> $output
printf "%s" "gto: " >> $output
#modify the configs you want to launch on machine in01
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrr: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_lrr1 approx_100coverage_lrr4 approx_100coverage_lrr8 approx_100coverage_lrr16 approx_100coverage_lrr48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "RR: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_RR1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "STL: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_STL1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n%s" "tl: " >> $output
#modify the configs you want to launch on machine in02
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

