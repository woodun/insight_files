#!/bin/bash

#21apps, not ready: WP

for benchmark in CP LIB LPS NQU RAY STO SCP SLA CONS FWT TRA AES BFS MUM NN kmeans JPEG BFS2 KMN BlackScholes lulesh
do
	    cat script_base_CUDA.pbs | sed -e "s/JPEG/$benchmark/g" | sed -e "s/compute/$machine/g" > CUDA/$benchmark/pbs_$benchmark.pbs
done