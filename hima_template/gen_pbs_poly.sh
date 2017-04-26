#!/bin/bash

for benchmark in 2DCONV 3DCONV 2MM 3MM ATAX BICG CORR COVAR FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK
do
	    cat script_base_polybench.pbs | sed -e "s/2DCONV/$benchmark/g" > polybench/$benchmark/pbs_$benchmark.pbs
done