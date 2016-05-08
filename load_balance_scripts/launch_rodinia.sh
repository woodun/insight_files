#!/bin/bash

#14apps

for benchmark in backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float pf_naive
do
sh launch_all_configs_per_app.sh $benchmark rodinia
done
