#!/bin/bash
 
for benchmark in MD QTC Reduction Scan Spmv Stencil2D Triad BFS
do
sh launch_all_configs_per_app.sh $benchmark shoc
done
