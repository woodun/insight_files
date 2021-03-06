#for swl1 case, only gtoswl1(other ones are same as this one) and tl1(this one is unique) is needed, other ones have been removed.
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/noevict/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/noevict/

#modify the configs you want to launch on machine in01
for stor1_config in approx_0coverage_noevict_gtoswl1 approx_0coverage_noevict_gtoswl4 approx_0coverage_noevict_gtoswl8 approx_0coverage_noevict_gtoswl16 approx_0coverage_noevict_gtoswl48 approx_0coverage_noevict_lrrswl4 approx_0coverage_noevict_lrrswl8 approx_0coverage_noevict_lrrswl16 approx_0coverage_noevict_lrrswl48 approx_0coverage_noevict_RR4 approx_0coverage_noevict_RR8 approx_0coverage_noevict_RR16 approx_0coverage_noevict_RR48 approx_0coverage_noevict_STL4 approx_0coverage_noevict_STL8 approx_0coverage_noevict_STL16 approx_0coverage_noevict_STL48 approx_0coverage_noevict_tl1 approx_0coverage_noevict_tl4 approx_0coverage_noevict_tl8 approx_0coverage_noevict_tl16 approx_0coverage_noevict_tl48 approx_125coverage_noevict_gtoswl1 approx_125coverage_noevict_gtoswl4 approx_125coverage_noevict_gtoswl8 approx_125coverage_noevict_gtoswl16 approx_125coverage_noevict_gtoswl48 approx_125coverage_noevict_lrrswl4 approx_125coverage_noevict_lrrswl8 approx_125coverage_noevict_lrrswl16 approx_125coverage_noevict_lrrswl48 approx_125coverage_noevict_RR4 approx_125coverage_noevict_RR8 approx_125coverage_noevict_RR16 approx_125coverage_noevict_RR48 approx_125coverage_noevict_STL4 approx_125coverage_noevict_STL8 approx_125coverage_noevict_STL16 approx_125coverage_noevict_STL48 approx_125coverage_noevict_tl1 approx_125coverage_noevict_tl4 approx_125coverage_noevict_tl8 approx_125coverage_noevict_tl16 approx_125coverage_noevict_tl48 approx_25coverage_noevict_gtoswl1 approx_25coverage_noevict_gtoswl4 approx_25coverage_noevict_gtoswl8 approx_25coverage_noevict_gtoswl16 approx_25coverage_noevict_gtoswl48 approx_25coverage_noevict_lrrswl4 approx_25coverage_noevict_lrrswl8 approx_25coverage_noevict_lrrswl16 approx_25coverage_noevict_lrrswl48 approx_25coverage_noevict_RR4 approx_25coverage_noevict_RR8 approx_25coverage_noevict_RR16 approx_25coverage_noevict_RR48 approx_25coverage_noevict_STL4 approx_25coverage_noevict_STL8 approx_25coverage_noevict_STL16 approx_25coverage_noevict_STL48 approx_25coverage_noevict_tl1 approx_25coverage_noevict_tl4 approx_25coverage_noevict_tl8 approx_25coverage_noevict_tl16 approx_25coverage_noevict_tl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
qsub pbs_$1.pbs
done

#modify the configs you want to launch on machine in02
for stor2_config in approx_50coverage_noevict_gtoswl1 approx_50coverage_noevict_gtoswl4 approx_50coverage_noevict_gtoswl8 approx_50coverage_noevict_gtoswl16 approx_50coverage_noevict_gtoswl48 approx_50coverage_noevict_lrrswl4 approx_50coverage_noevict_lrrswl8 approx_50coverage_noevict_lrrswl16 approx_50coverage_noevict_lrrswl48 approx_50coverage_noevict_RR4 approx_50coverage_noevict_RR8 approx_50coverage_noevict_RR16 approx_50coverage_noevict_RR48 approx_50coverage_noevict_STL4 approx_50coverage_noevict_STL8 approx_50coverage_noevict_STL16 approx_50coverage_noevict_STL48 approx_50coverage_noevict_tl1 approx_50coverage_noevict_tl4 approx_50coverage_noevict_tl8 approx_50coverage_noevict_tl16 approx_50coverage_noevict_tl48 approx_75coverage_noevict_gtoswl1 approx_75coverage_noevict_gtoswl4 approx_75coverage_noevict_gtoswl8 approx_75coverage_noevict_gtoswl16 approx_75coverage_noevict_gtoswl48 approx_75coverage_noevict_lrrswl4 approx_75coverage_noevict_lrrswl8 approx_75coverage_noevict_lrrswl16 approx_75coverage_noevict_lrrswl48 approx_75coverage_noevict_RR4 approx_75coverage_noevict_RR8 approx_75coverage_noevict_RR16 approx_75coverage_noevict_RR48 approx_75coverage_noevict_STL4 approx_75coverage_noevict_STL8 approx_75coverage_noevict_STL16 approx_75coverage_noevict_STL48 approx_75coverage_noevict_tl1 approx_75coverage_noevict_tl4 approx_75coverage_noevict_tl8 approx_75coverage_noevict_tl16 approx_75coverage_noevict_tl48 approx_100coverage_noevict_gtoswl1 approx_100coverage_noevict_gtoswl4 approx_100coverage_noevict_gtoswl8 approx_100coverage_noevict_gtoswl16 approx_100coverage_noevict_gtoswl48 approx_100coverage_noevict_lrrswl4 approx_100coverage_noevict_lrrswl8 approx_100coverage_noevict_lrrswl16 approx_100coverage_noevict_lrrswl48 approx_100coverage_noevict_RR4 approx_100coverage_noevict_RR8 approx_100coverage_noevict_RR16 approx_100coverage_noevict_RR48 approx_100coverage_noevict_STL4 approx_100coverage_noevict_STL8 approx_100coverage_noevict_STL16 approx_100coverage_noevict_STL48 approx_100coverage_noevict_tl1 approx_100coverage_noevict_tl4 approx_100coverage_noevict_tl8 approx_100coverage_noevict_tl16 approx_100coverage_noevict_tl48
do
cd $configs_stor2
cd $stor2_config
cd $2/$1/
qsub pbs_$1.pbs
done