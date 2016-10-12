#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/profile/

#modify the configs you want to launch on machine in01, use this sh on machine in01
for stor1_config in profile_lrrswl4 profile_lrrswl8 profile_lrrswl16 profile_RRswl4 profile_RRswl8 profile_RRswl16 profile_GTOswl4 profile_GTOswl8 profile_GTOswl16
do
cd $configs_stor1
cd $stor1_config
sh setup_ALL.sh $stor1_config
done
