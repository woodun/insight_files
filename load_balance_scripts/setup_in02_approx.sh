#!/bin/sh

#specify your config path in stor2
configs_stor2=/stor2/hwang07/profile/

#modify the configs you want to launch on machine in01, use this sh on machine in01
for stor2_config in exp_profile_gtoswl48 exp_profile_lrrswl48 approximate_125coverage_gtoswl48 approximate_25coverage_gtoswl48 approximate_50coverage_gtoswl48 approximate_75coverage_gtoswl48 approximate_100coverage_gtoswl48 approximate_125coverage_lrrswl48 approximate_25coverage_lrrswl48 approximate_50coverage_lrrswl48 approximate_75coverage_lrrswl48 approximate_100coverage_lrrswl48
do
cd $configs_stor2
cd $stor2_config
sh setup_ALL.sh $stor2_config
done
