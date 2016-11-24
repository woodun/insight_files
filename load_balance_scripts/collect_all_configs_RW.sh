#not in use
#!/bin/sh

#specify your config path in stor1
configs_stor1=/stor1/hwang07/approx/

#specify your config path in stor2
configs_stor2=/stor2/hwang07/approx/

#specify your output file
output=/stor1/hwang07/RW.txt

###############################################################################Total_core_cache_stats_breakdown 0 coverage GTO48#########################
printf "$2_$1:\n" >> $output
for stor1_config in approx_0coverage_gtoswl48
do
cd $configs_stor1
cd $stor1_config
cd $2/$1/
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | tail -1 | xargs printf "   %s\n" >> $output
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_W\]\[MISS\] =" output_* | tail -1 | xargs printf "   %s\n" >> $output
done

