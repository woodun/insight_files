#!/bin/bash

#7apps
#access too few:  . No prediction even without tag:histo
#bw<15% && ipc>400(not interesting): cutcp, mm, sad, tpacf
#2 for now

for benchmark in spmv lbm
do
sh launch_all_configs_per_app_in02.sh $benchmark parboil
done
