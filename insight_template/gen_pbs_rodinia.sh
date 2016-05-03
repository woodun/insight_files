#!/bin/bash

    if [ "$1" = 1 ]; then
        machine=in01
    else
        machine=in02
    fi

for benchmark in backprop hotspot pf_naive pf_float heartwall cfd streamcluster nw lud leukocyte srad_v1 srad_v2 pathfinder
do
	    cat script_base_rodinia.pbs | sed -e "s/nw/$benchmark/g" > rodinia/$benchmark/pbs_$benchmark.pbs
            cat script_base_rodinia.pbs | sed -e "s/compute/$machine/g" > CUDA/$benchmark/pbs_$benchmark.pbs
done


