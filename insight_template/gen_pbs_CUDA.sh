#!/bin/bash

    if [ "$1" = 1 ]; then
        machine=in01
    else
        machine=in02
    fi

for benchmark in AES BlackScholes CONS FWT JPEG NQU RAY SCP STO LIB LPS MUM NN SLA TRA kmeans BFS BFS2 KMN
do
	    cat script_base_CUDA.pbs | sed -e "s/JPEG/$benchmark/g" > CUDA/$benchmark/pbs_$benchmark.pbs
            cat script_base_CUDA.pbs | sed -e "s/compute/$machine/g" > CUDA/$benchmark/pbs_$benchmark.pbs
done