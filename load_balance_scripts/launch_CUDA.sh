#!/bin/bash

#21apps total, not ready:WP, no global read misses:LIB, NQU, too less misses: AES, CP, STO, bias always high: KMN, FWT, SCP.
#bias doesn't change:CONS, LPS, SLA. bias high but changes:lulesh. less Misses: JPEG, RAY.
#Good: TRA, BFS, MUM, NN, kmeans, BFS2, BlackScholes, lulesh?.
#current:14

for benchmark in LPS RAY SLA CONS TRA BFS MUM NN kmeans JPEG BFS2 KMN BlackScholes lulesh
do
sh launch_all_configs_per_app.sh $benchmark CUDA
done