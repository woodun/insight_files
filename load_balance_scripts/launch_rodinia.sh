#!/bin/bash

#13apps
#not working:pf_naive
#runnable but no reads: leukocyte
#prediction rate too low: nw
#bias too high: streamcluster
#bias high but not all: cfd
#access too few: heartwall
#bias not high, but no less than 5%: heartwall, pathfinder, lud, srad_v2
#Good(top bias still good) 2: srad_v1, cfd
#bw<15% && ipc>400(not interesting): backprop bfs hotspot
#3 for now(based on avg_bias)


for benchmark in srad_v1 pf_float cfd
do
sh launch_all_configs_per_app.sh $benchmark rodinia
done
