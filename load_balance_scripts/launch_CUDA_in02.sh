#!/bin/bash

#21apps, not ready:WP

for benchmark in BlackScholes MUM FWT lulesh CP LIB LPS STO SCP SLA CONS TRA AES BFS NN kmeans BFS2 KMN
do
sh launch_all_configs_per_app_in02.sh $benchmark CUDA
done