#!/bin/bash

for benchmark in LPS lulesh JPEG TRA RAY
do
sh launch_all_configs_per_app_in01.sh $benchmark CUDA
done