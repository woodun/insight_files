#!/bin/bash

#7apps
#prediction rate too low: 
#bias too high: spmv
#bias not high, but no less than 5%: lbm
#Good(top bias still good):
#access too few:  . No prediction even without tag:histo
#bw<15% && ipc>400(not interesting): cutcp, mm, sad, tpacf
#0 for now(based on avg_bias)

for benchmark in 
do
sh launch_all_configs_per_app.sh $benchmark parboil
done
