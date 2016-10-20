#!/bin/bash

#6apps

for benchmark in bfs bh dmr mst sp sssp
do
	cat script_base_lonestar.pbs | sed -e "s/bfs/$benchmark/g" | sed -e "s/compute/$machine/g"> lonestar/$benchmark/pbs_$benchmark.pbs
done