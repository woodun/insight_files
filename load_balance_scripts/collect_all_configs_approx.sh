#not in use
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/approx/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/approx/

#specify your output file
output=/stor1/hwang07/profile/collect/$2_$1.txt

printf "%s" "###################################################ACT_percLossInQoR#######################################################################" >> $output
printf "\n%s\n" "coverage:           0%        12.5%          25%          50%          75%         100%" >> $output
printf "%s" "gtoswl48: " >> $output

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl48: " >> $output

#modify the configs you want to launch on machine in02
for stor2_config in exp_profile_lrrswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percLossInQoR " output_* | sed -e "s/ACT_percLossInQoR //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "###################################################ACT_percRelativeError#######################################################################" >> $output
printf "\n%s\n" "coverage:           0%        12.5%          25%          50%          75%         100%" >> $output
printf "%s" "gtoswl48: " >> $output

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError " output_* | sed -e "s/ACT_percRelativeError //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl48: " >> $output

#modify the configs you want to launch on machine in02
for stor2_config in exp_profile_lrrswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError " output_* | sed -e "s/ACT_percRelativeError //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "###################################################ACT_percRelativeError_noskip#######################################################################" >> $output
printf "\n%s\n" "coverage:           0%        12.5%          25%          50%          75%         100%" >> $output
printf "%s" "gtoswl48: " >> $output

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_noskip " output_* | sed -e "s/ACT_percRelativeError_noskip //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl48: " >> $output

#modify the configs you want to launch on machine in02
for stor2_config in exp_profile_lrrswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_noskip " output_* | sed -e "s/ACT_percRelativeError_noskip //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "###################################################ACT_percRelativeError_skipzero#######################################################################" >> $output
printf "\n%s\n" "coverage:           0%        12.5%          25%          50%          75%         100%" >> $output
printf "%s" "gtoswl48: " >> $output

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl48: " >> $output

#modify the configs you want to launch on machine in02
for stor2_config in exp_profile_lrrswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percRelativeError_skipzero " output_* | sed -e "s/ACT_percRelativeError_skipzero //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "###################################################ACT_percSumDifferent#######################################################################" >> $output
printf "\n%s\n" "coverage:           0%        12.5%          25%          50%          75%         100%" >> $output
printf "%s" "gtoswl48: " >> $output

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "ACT_percSumDifferent " output_* | sed -e "s/ACT_percSumDifferent //g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl48: " >> $output

#modify the configs you want to launch on machine in02
for stor2_config in exp_profile_lrrswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "ACT_percSumDifferent " output_* | sed -e "s/ACT_percSumDifferent //g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "###################################################IPC#######################################################################" >> $output
printf "\n%s\n" "coverage:       0%    12.5%     25%      50%      75%     100%" >> $output
printf "%s" "gtoswl48: " >> $output

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n%s" "lrrswl48: " >> $output

#modify the configs you want to launch on machine in02
for stor2_config in exp_profile_lrrswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n\n%s" "###################################################BW_UTIL#######################################################################" >> $output
printf "\n%s\n" "coverage:       0%    12.5%      25%      50%      75%     100%" >> $output
printf "%s" "gtoswl48: " >> $output

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl48: " >> $output

#modify the configs you want to launch on machine in02
for stor2_config in exp_profile_lrrswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "###################################################Total_core_cache_stats_breakdown[GLOBAL_ACC_R][MISS]#######################################################################" >> $output
printf "\n%s\n" "coverage:         0%      12.5%        25%        50%        75%       100%" >> $output
printf "%s" "gtoswl48: " >> $output

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl48: " >> $output

#modify the configs you want to launch on machine in02
for stor2_config in exp_profile_lrrswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "###################################################gpgpu_simulation_time#######################################################################" >> $output
printf "\n%s\n" "coverage:            0%         12.5%           25%           50%           75%          100%" >> $output
printf "%s" "gtoswl48: " >> $output

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpgpu_simulation_time =" output_* | tail -1 | sed -e "s/gpgpu_simulation_time =//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl48: " >> $output

#modify the configs you want to launch on machine in02
for stor2_config in exp_profile_lrrswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpgpu_simulation_time =" output_* | tail -1 | sed -e "s/gpgpu_simulation_time =//g" | xargs printf "   %s " >> $output
done

printf "\n\n%s" "###################################################gpgpu_simulation_rate#######################################################################" >> $output
printf "\n%s\n" "coverage:                   0%                12.5%                  25%                  50%                  75%                 100%" >> $output
printf "%s" "gtoswl48: " >> $output

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpgpu_simulation_rate =" output_* | tail -1 | sed -e "s/gpgpu_simulation_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n%s" "lrrswl48: " >> $output

#modify the configs you want to launch on machine in02
for stor2_config in exp_profile_lrrswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpgpu_simulation_rate =" output_* | tail -1 | sed -e "s/gpgpu_simulation_rate =//g" | xargs printf "   %s " >> $output
done