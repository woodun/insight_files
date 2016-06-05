#!/bin/bash

#21apps, not ready:WP

for benchmark in CP LIB LPS NQU RAY STO SCP SLA CONS FWT TRA lulesh AES BFS MUM NN kmeans JPEG BFS2 KMN BlackScholes
do
sh launch_all_configs_per_app.sh $benchmark CUDA
done