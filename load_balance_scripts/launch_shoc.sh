#!/bin/bash

#8apps
#prediction rate too low: MD, BFS
#bias too high: Triad
#bias high but not all:QTC
#good: Reduction, Scan, Spmv, Stencil2D.
#bw<15% && ipc>400(not interesting): 
#5 for now

for benchmark in Reduction Scan Spmv Stencil2D QTC
do
sh launch_all_configs_per_app.sh $benchmark shoc
done
