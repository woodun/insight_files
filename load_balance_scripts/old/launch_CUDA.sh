#!/bin/bash

#21apps total, not ready:WP, no global read misses:LIB, NQU, too few misses: AES, CP, STO, JPEG, bias always high: KMN, FWT, SCP.
#bias not high, but no less than 5%: BlackScholes, CONS, kmeans, KMN.  SLA(special case, all is in 5% range. so we keep it.)
#bias doesn't change:CONS, LPS, SLA. bias high but changes:lulesh. less Misses: JPEG, RAY.
#Good(top bias still good) 4: RAY, JPEG, lulesh, LPS
#bw<15% && ipc>400(not interesting): None.
#avg bias not change for schedulers: CONS BlackScholes LPS SLA
#coverage too low: NN
#9 for now(based on avg_bias)

for benchmark in RAY TRA lulesh LPS BFS BFS2 MUM SLA
do
sh launch_all_configs_per_app.sh $benchmark CUDA
done