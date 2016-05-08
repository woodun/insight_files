#!/bin/bash

#7apps

for benchmark in cutcp histo mm sad spmv lbm tpacf
do
sh launch_all_configs_per_app.sh $benchmark parboil
done
