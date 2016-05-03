#!/bin/bash

    if [ "$1" = 1 ]; then
        machine=in01
    else
        machine=in02
    fi

for benchmark in MD QTC Reduction Scan Spmv Stencil2D Triad
do
	    cat script_base_shoc.pbs | sed -e "s/MD/$benchmark/g" > shoc/$benchmark/pbs_$benchmark.pbs
            cat script_base_rodinia.pbs | sed -e "s/compute/$machine/g" > CUDA/$benchmark/pbs_$benchmark.pbs
done
