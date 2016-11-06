#not in use
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/profile/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/profile/

#specify your output file
output=/stor1/hwang07/profile/collect/

#modify the configs you want to launch on machine in01
for stor1_config in exp_profile_gtoswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep 

done

#modify the configs you want to launch on machine in02
for stor2_config in exp_profile_lrrswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
qsub pbs_$1.pbs
done