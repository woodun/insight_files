#!/bin/bash

#8apps

for benchmark in MD QTC Reduction Scan Spmv Stencil2D Triad BFS
do
	    cat script_base_shoc.pbs | sed -e "s/MD/$benchmark/g" > shoc/$benchmark/pbs_$benchmark.pbs
done
