#!/bin/bash

#15apps total, not ready: no global read misses: too few misses:  bias always high: 
#bias not high, but no less than 5%: 
#bias doesn't change: bias high but changes: less Misses:
#Good(top bias still good) : 
#bw<15% && ipc>400(not interesting):
#avg bias not change for schedulers: 
#coverage too low: 

for benchmark in 2DCONV 3DCONV 2MM 3MM ATAX BICG CORR COVAR FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK
do
sh launch_all_configs_per_app.sh $benchmark polybench
done