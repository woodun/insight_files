#!/bin/bash

#21apps, not ready:WP, no global read misses:LIB, NQU

for benchmark in BlackScholes MUM RAY JPEG FWT lulesh CP LPS STO SCP SLA CONS TRA AES BFS NN kmeans BFS2 KMN
do
sh launch_all_configs_per_app_in02.sh $benchmark CUDA
done