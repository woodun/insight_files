#!/bin/bash

    if [ "$1" = 1 ]; then
        machine=in01
    else
        machine=in02
    fi

for benchmark in bfs bh dmr pta mst sp sssp
do
	cat script_base_lonestar.pbs | sed -e "s/bfs/$benchmark/g" | sed -e "s/compute/$machine/g"> lonestar/$benchmark/pbs_$benchmark.pbs
done