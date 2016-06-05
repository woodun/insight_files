#!/bin/bash

#13apps
#not working:pf_naive
#runnable but no reads: leukocyte

for benchmark in backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud srad_v1 srad_v2 pf_float
do
sh launch_all_configs_per_app.sh $benchmark rodinia
done
