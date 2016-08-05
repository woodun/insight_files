#!/bin/bash

#7apps
#prediction rate too low: 
#bias too high: spmv
#good: lbm
#access too few:  . No prediction even without tag:histo
#bw<15% && ipc>400(not interesting): cutcp, mm, sad, tpacf
#1 for now

for benchmark in lbm
do
sh launch_all_configs_per_app.sh $benchmark parboil
done
