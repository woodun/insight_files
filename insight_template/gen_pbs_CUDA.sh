#!/bin/bash

#21apps

for benchmark in CP LIB LPS NQU RAY STO SCP SLA CONS FWT TRA AES BFS MUM NN kmeans WP JPEG BFS2 KMN BlackScholes
do
	    cat script_base_CUDA.pbs | sed -e "s/JPEG/$benchmark/g" | sed -e "s/compute/$machine/g" > CUDA/$benchmark/pbs_$benchmark.pbs
done