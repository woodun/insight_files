#!/bin/bash

#6apps
#not working:pta

for benchmark in bfs bh dmr mst sp sssp
do
sh launch_all_configs_per_app.sh $benchmark lonestar
done

