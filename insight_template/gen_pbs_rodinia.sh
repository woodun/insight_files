#!/bin/bash

#14apps

for benchmark in backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float pf_naive
do
	    cat script_base_rodinia.pbs | sed -e "s/nw/$benchmark/g" | sed -e "s/compute/$machine/g" > rodinia/$benchmark/pbs_$benchmark.pbs
done


