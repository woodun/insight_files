#!/bin/bash

#8apps
#prediction rate too low: MD, BFS
#bias too high: Triad
#bias high but not all:QTC
#access too few: 
#bias not high, but no less than 5%: Reduction, Scan, Spmv, Stencil2D
#Good(top bias still good): QTC
#bw<15% && ipc>400(not interesting): 
#1 for now(based on avg_bias)

for benchmark in QTC
do
sh launch_all_configs_per_app.sh $benchmark shoc
done
