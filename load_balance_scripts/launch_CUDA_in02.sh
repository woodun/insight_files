#!/bin/bash

for benchmark in RAY TRA JPEG lulesh LPS BFS BFS2 MUM SLA
do
sh launch_all_configs_per_app_in02.sh $benchmark CUDA
done