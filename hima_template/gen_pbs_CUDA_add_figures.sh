#!/bin/bash

#21apps, not ready: WP

for benchmark in JPEG_ENCODE JPEG_DECODE
do
	    cat script_base_CUDA.pbs | sed -e "s/JPEG/$benchmark/g" > CUDA/$benchmark/pbs_$benchmark.pbs
done