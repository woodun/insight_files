#!/bin/bash

#7apps

for benchmark in bfs bh dmr pta mst sp sssp
do
sh launch_all_configs_per_app.sh $benchmark lonestar
done

