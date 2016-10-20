#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/profile/

#modify the configs you want to launch on machine in01, use this sh on machine in01
for stor1_config in profile_misses_lrrswl1 profile_misses_lrrswl2 profile_misses_lrrswl4 profile_misses_lrrswl8 profile_misses_lrrswl16 profile_misses_lrrswl32 profile_misses_lrrswl48 profile_misses_RRswl1 profile_misses_RRswl2 profile_misses_RRswl4 profile_misses_RRswl8 profile_misses_RRswl16 profile_misses_RRswl32 profile_misses_RRswl48 profile_misses_GTOswl1 profile_misses_GTOswl2 profile_misses_GTOswl4 profile_misses_GTOswl8 profile_misses_GTOswl16 profile_misses_GTOswl32 profile_misses_GTOswl48
do
cd $configs_stor1
cd $stor1_config
sh setup_ALL.sh $stor1_config
done
