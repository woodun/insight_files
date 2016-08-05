#!/bin/bash

#6apps total
#not working:pta
#bias too high: sp, bfs
#bias high but not all: sp
#good: mst, sssp, sp
#best: bh
#bw<15% && ipc>400(not interesting): dmr(also rate too low)
#4 for now

for benchmark in bh mst sssp sp
do
sh launch_all_configs_per_app.sh $benchmark lonestar
done

