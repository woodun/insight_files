#not in use
#!/bin/sh


#specify your config path
configs_stor=/sciclone/data20/hwang07/approx/

#specify your output file
output=/sciclone/data20/hwang07/collect_matlab/RW.txt

###############################################################################Total_core_cache_stats_breakdown 0 coverage GTO48#########################
printf "$2_$1:\n" >> $output
for stor1_config in approx_0coverage_gtoswl48
do
cd $configs_stor
cd $stor1_config
cd $2/$1/
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_R\]\[MISS\] =" output_* | xargs printf "   %s\n" >> $output
grep "Total_core_cache_stats_breakdown\[GLOBAL_ACC_W\]\[MISS\] =" output_* | xargs printf "   %s\n" >> $output
done

