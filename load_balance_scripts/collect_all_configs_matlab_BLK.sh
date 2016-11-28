#not in use
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/approx/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/approx/

#specify your output file
output=/stor1/hwang07/profile/collect/$2_$1.txt

###########################################################################################Max absolute error:#########################
##############################################Max absolute error: 0%#########################
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_lrrswl4 approx_0coverage_lrrswl8 approx_0coverage_lrrswl16 approx_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

##############################################Max absolute error: 12.5%#########################
printf "\n" >> $output
for stor1_config in approx_125coverage_gtoswl1 approx_125coverage_gtoswl4 approx_125coverage_gtoswl8 approx_125coverage_gtoswl16 approx_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_lrrswl4 approx_125coverage_lrrswl8 approx_125coverage_lrrswl16 approx_125coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_RR4 approx_125coverage_RR8 approx_125coverage_RR16 approx_125coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_STL4 approx_125coverage_STL8 approx_125coverage_STL16 approx_125coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_tl1 approx_125coverage_tl4 approx_125coverage_tl8 approx_125coverage_tl16 approx_125coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

##############################################Max absolute error: 25%#########################
printf "\n" >> $output
for stor1_config in approx_25coverage_gtoswl1 approx_25coverage_gtoswl4 approx_25coverage_gtoswl8 approx_25coverage_gtoswl16 approx_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_lrrswl4 approx_25coverage_lrrswl8 approx_25coverage_lrrswl16 approx_25coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_RR4 approx_25coverage_RR8 approx_25coverage_RR16 approx_25coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_STL4 approx_25coverage_STL8 approx_25coverage_STL16 approx_25coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_tl1 approx_25coverage_tl4 approx_25coverage_tl8 approx_25coverage_tl16 approx_25coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

##############################################Max absolute error: 50%#########################
printf "\n" >> $output
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

##############################################Max absolute error: 75%#########################
printf "\n" >> $output
for stor1_config in approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_lrrswl4 approx_75coverage_lrrswl8 approx_75coverage_lrrswl16 approx_75coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

##############################################Max absolute error: 100%#########################
printf "\n" >> $output
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_lrrswl4 approx_100coverage_lrrswl8 approx_100coverage_lrrswl16 approx_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "Max absolute error: " output_* | tail -1 | sed -e "s/Max absolute error: //g" | xargs printf "%s " >> $output
done

#############################################################################################bw_util#####################
#################################################################bw_util 0%#####################
printf "\n" >> $output
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_lrrswl4 approx_0coverage_lrrswl8 approx_0coverage_lrrswl16 approx_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#################################################################bw_util 12.5%#####################
printf "\n" >> $output
for stor1_config in approx_125coverage_gtoswl1 approx_125coverage_gtoswl4 approx_125coverage_gtoswl8 approx_125coverage_gtoswl16 approx_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_lrrswl4 approx_125coverage_lrrswl8 approx_125coverage_lrrswl16 approx_125coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_RR4 approx_125coverage_RR8 approx_125coverage_RR16 approx_125coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_STL4 approx_125coverage_STL8 approx_125coverage_STL16 approx_125coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_tl1 approx_125coverage_tl4 approx_125coverage_tl8 approx_125coverage_tl16 approx_125coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#################################################################bw_util 25%#####################
printf "\n" >> $output
for stor1_config in approx_25coverage_gtoswl1 approx_25coverage_gtoswl4 approx_25coverage_gtoswl8 approx_25coverage_gtoswl16 approx_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_lrrswl4 approx_25coverage_lrrswl8 approx_25coverage_lrrswl16 approx_25coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_RR4 approx_25coverage_RR8 approx_25coverage_RR16 approx_25coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_STL4 approx_25coverage_STL8 approx_25coverage_STL16 approx_25coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_tl1 approx_25coverage_tl4 approx_25coverage_tl8 approx_25coverage_tl16 approx_25coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#################################################################bw_util 50%#####################
printf "\n" >> $output
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#################################################################bw_util 75%#####################
printf "\n" >> $output
for stor1_config in approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_lrrswl4 approx_75coverage_lrrswl8 approx_75coverage_lrrswl16 approx_75coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#################################################################bw_util 100%#####################
printf "\n" >> $output
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_lrrswl4 approx_100coverage_lrrswl8 approx_100coverage_lrrswl16 approx_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "bw_util=[E\+0-9\.]*" output_* | tail -1 | sed -e "s/bw_util=//g" | xargs printf "   %s " >> $output
done

#############################################################################################avg_line_relativeError 0%####################
################################################avg_line_relativeError 0%####################
printf "\n" >> $output
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_lrrswl4 approx_0coverage_lrrswl8 approx_0coverage_lrrswl16 approx_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

################################################avg_line_relativeError 12.5%####################
printf "\n" >> $output
for stor1_config in approx_125coverage_gtoswl1 approx_125coverage_gtoswl4 approx_125coverage_gtoswl8 approx_125coverage_gtoswl16 approx_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_lrrswl4 approx_125coverage_lrrswl8 approx_125coverage_lrrswl16 approx_125coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_RR4 approx_125coverage_RR8 approx_125coverage_RR16 approx_125coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_STL4 approx_125coverage_STL8 approx_125coverage_STL16 approx_125coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_tl1 approx_125coverage_tl4 approx_125coverage_tl8 approx_125coverage_tl16 approx_125coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

################################################avg_line_relativeError 25%####################
printf "\n" >> $output
for stor1_config in approx_25coverage_gtoswl1 approx_25coverage_gtoswl4 approx_25coverage_gtoswl8 approx_25coverage_gtoswl16 approx_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_lrrswl4 approx_25coverage_lrrswl8 approx_25coverage_lrrswl16 approx_25coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_RR4 approx_25coverage_RR8 approx_25coverage_RR16 approx_25coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_STL4 approx_25coverage_STL8 approx_25coverage_STL16 approx_25coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_tl1 approx_25coverage_tl4 approx_25coverage_tl8 approx_25coverage_tl16 approx_25coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

################################################avg_line_relativeError 50%####################
printf "\n" >> $output
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

################################################avg_line_relativeError 75%####################
printf "\n" >> $output
for stor1_config in approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_lrrswl4 approx_75coverage_lrrswl8 approx_75coverage_lrrswl16 approx_75coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

################################################avg_line_relativeError 100%####################
printf "\n" >> $output
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_lrrswl4 approx_100coverage_lrrswl8 approx_100coverage_lrrswl16 approx_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "average_avg_bias:[E\+0-9\.]*" output_* | tail -1 | sed -e "s/average_avg_bias://g" | xargs printf "   %s " >> $output
done

#############################################################################################miss count 0%####################
################################################miss count 0%####################
printf "\n" >> $output
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_lrrswl4 approx_0coverage_lrrswl8 approx_0coverage_lrrswl16 approx_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

################################################miss count 12.5%####################
printf "\n" >> $output
for stor1_config in approx_125coverage_gtoswl1 approx_125coverage_gtoswl4 approx_125coverage_gtoswl8 approx_125coverage_gtoswl16 approx_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_lrrswl4 approx_125coverage_lrrswl8 approx_125coverage_lrrswl16 approx_125coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_RR4 approx_125coverage_RR8 approx_125coverage_RR16 approx_125coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_STL4 approx_125coverage_STL8 approx_125coverage_STL16 approx_125coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_tl1 approx_125coverage_tl4 approx_125coverage_tl8 approx_125coverage_tl16 approx_125coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

################################################miss count 25%####################
printf "\n" >> $output
for stor1_config in approx_25coverage_gtoswl1 approx_25coverage_gtoswl4 approx_25coverage_gtoswl8 approx_25coverage_gtoswl16 approx_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_lrrswl4 approx_25coverage_lrrswl8 approx_25coverage_lrrswl16 approx_25coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_RR4 approx_25coverage_RR8 approx_25coverage_RR16 approx_25coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_STL4 approx_25coverage_STL8 approx_25coverage_STL16 approx_25coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_tl1 approx_25coverage_tl4 approx_25coverage_tl8 approx_25coverage_tl16 approx_25coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

################################################miss count 50%####################
printf "\n" >> $output
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

################################################miss count 75%####################
printf "\n" >> $output
for stor1_config in approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_lrrswl4 approx_75coverage_lrrswl8 approx_75coverage_lrrswl16 approx_75coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

################################################miss count 100%####################
printf "\n" >> $output
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_lrrswl4 approx_100coverage_lrrswl8 approx_100coverage_lrrswl16 approx_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | sed -e "s/Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =//g" | xargs printf "   %s " >> $output
done

#############################################################################################miss rate 0%####################
################################################miss rate 0%####################
printf "\n" >> $output
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_lrrswl4 approx_0coverage_lrrswl8 approx_0coverage_lrrswl16 approx_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

################################################miss rate 12.5%####################
printf "\n" >> $output
for stor1_config in approx_125coverage_gtoswl1 approx_125coverage_gtoswl4 approx_125coverage_gtoswl8 approx_125coverage_gtoswl16 approx_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_lrrswl4 approx_125coverage_lrrswl8 approx_125coverage_lrrswl16 approx_125coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_RR4 approx_125coverage_RR8 approx_125coverage_RR16 approx_125coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_STL4 approx_125coverage_STL8 approx_125coverage_STL16 approx_125coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_tl1 approx_125coverage_tl4 approx_125coverage_tl8 approx_125coverage_tl16 approx_125coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

################################################miss rate 25%####################
printf "\n" >> $output
for stor1_config in approx_25coverage_gtoswl1 approx_25coverage_gtoswl4 approx_25coverage_gtoswl8 approx_25coverage_gtoswl16 approx_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_lrrswl4 approx_25coverage_lrrswl8 approx_25coverage_lrrswl16 approx_25coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_RR4 approx_25coverage_RR8 approx_25coverage_RR16 approx_25coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_STL4 approx_25coverage_STL8 approx_25coverage_STL16 approx_25coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_tl1 approx_25coverage_tl4 approx_25coverage_tl8 approx_25coverage_tl16 approx_25coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

################################################miss rate 50%####################
printf "\n" >> $output
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

################################################miss rate 75%####################
printf "\n" >> $output
for stor1_config in approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_lrrswl4 approx_75coverage_lrrswl8 approx_75coverage_lrrswl16 approx_75coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

################################################miss rate 100%####################
printf "\n" >> $output
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_lrrswl4 approx_100coverage_lrrswl8 approx_100coverage_lrrswl16 approx_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep -o "L1D_total_cache_miss_rate =" output_* | tail -1 | sed -e "s/L1D_total_cache_miss_rate =//g" | xargs printf "   %s " >> $output
done

############################################################################################################IPC#####################
#################################################################IPC 0%#####################
printf "\n" >> $output
for stor1_config in approx_0coverage_gtoswl1 approx_0coverage_gtoswl4 approx_0coverage_gtoswl8 approx_0coverage_gtoswl16 approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_lrrswl4 approx_0coverage_lrrswl8 approx_0coverage_lrrswl16 approx_0coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_RR4 approx_0coverage_RR8 approx_0coverage_RR16 approx_0coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_gtoswl1 approx_0coverage_STL4 approx_0coverage_STL8 approx_0coverage_STL16 approx_0coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_0coverage_tl1 approx_0coverage_tl4 approx_0coverage_tl8 approx_0coverage_tl16 approx_0coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#################################################################IPC 12.5%#####################
printf "\n" >> $output
for stor1_config in approx_125coverage_gtoswl1 approx_125coverage_gtoswl4 approx_125coverage_gtoswl8 approx_125coverage_gtoswl16 approx_125coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_lrrswl4 approx_125coverage_lrrswl8 approx_125coverage_lrrswl16 approx_125coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_RR4 approx_125coverage_RR8 approx_125coverage_RR16 approx_125coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_gtoswl1 approx_125coverage_STL4 approx_125coverage_STL8 approx_125coverage_STL16 approx_125coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_125coverage_tl1 approx_125coverage_tl4 approx_125coverage_tl8 approx_125coverage_tl16 approx_125coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#################################################################IPC 25%#####################
printf "\n" >> $output
for stor1_config in approx_25coverage_gtoswl1 approx_25coverage_gtoswl4 approx_25coverage_gtoswl8 approx_25coverage_gtoswl16 approx_25coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_lrrswl4 approx_25coverage_lrrswl8 approx_25coverage_lrrswl16 approx_25coverage_lrrswl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_RR4 approx_25coverage_RR8 approx_25coverage_RR16 approx_25coverage_RR48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_gtoswl1 approx_25coverage_STL4 approx_25coverage_STL8 approx_25coverage_STL16 approx_25coverage_STL48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_25coverage_tl1 approx_25coverage_tl4 approx_25coverage_tl8 approx_25coverage_tl16 approx_25coverage_tl48
do
cd $configs_stor1
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#################################################################IPC 50%#####################
printf "\n" >> $output
for stor1_config in approx_50coverage_gtoswl1 approx_50coverage_gtoswl4 approx_50coverage_gtoswl8 approx_50coverage_gtoswl16 approx_50coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_lrrswl4 approx_50coverage_lrrswl8 approx_50coverage_lrrswl16 approx_50coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_RR4 approx_50coverage_RR8 approx_50coverage_RR16 approx_50coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_gtoswl1 approx_50coverage_STL4 approx_50coverage_STL8 approx_50coverage_STL16 approx_50coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_50coverage_tl1 approx_50coverage_tl4 approx_50coverage_tl8 approx_50coverage_tl16 approx_50coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#################################################################IPC 75%#####################
printf "\n" >> $output
for stor1_config in approx_75coverage_gtoswl1 approx_75coverage_gtoswl4 approx_75coverage_gtoswl8 approx_75coverage_gtoswl16 approx_75coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_lrrswl4 approx_75coverage_lrrswl8 approx_75coverage_lrrswl16 approx_75coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_RR4 approx_75coverage_RR8 approx_75coverage_RR16 approx_75coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_gtoswl1 approx_75coverage_STL4 approx_75coverage_STL8 approx_75coverage_STL16 approx_75coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_75coverage_tl1 approx_75coverage_tl4 approx_75coverage_tl8 approx_75coverage_tl16 approx_75coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

#################################################################IPC 100%#####################
printf "\n" >> $output
for stor1_config in approx_100coverage_gtoswl1 approx_100coverage_gtoswl4 approx_100coverage_gtoswl8 approx_100coverage_gtoswl16 approx_100coverage_gtoswl48
do
cd $configs_stor2
cd $stor1_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_lrrswl4 approx_100coverage_lrrswl8 approx_100coverage_lrrswl16 approx_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_RR4 approx_100coverage_RR8 approx_100coverage_RR16 approx_100coverage_RR48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_gtoswl1 approx_100coverage_STL4 approx_100coverage_STL8 approx_100coverage_STL16 approx_100coverage_STL48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done

printf "\n" >> $output
for stor2_config in approx_100coverage_tl1 approx_100coverage_tl4 approx_100coverage_tl8 approx_100coverage_tl16 approx_100coverage_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
grep "gpu_tot_ipc =" output_* | tail -1 | sed -e "s/gpu_tot_ipc =//g" | xargs printf "%s " >> $output
done
