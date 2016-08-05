#!/bin/bash

#13apps
#not working:pf_naive
#runnable but no reads: leukocyte
#prediction rate too low: nw
#bias too high: streamcluster
#bias high but not all: cfd
#good: heartwall pathfinder lud srad_v1 srad_v2 pf_float
#bw<15% && ipc>400(not interesting): backprop bfs hotspot
#7 for now

for benchmark in heartwall pathfinder lud srad_v1 srad_v2 pf_float cfd
do
sh launch_all_configs_per_app.sh $benchmark rodinia
done
