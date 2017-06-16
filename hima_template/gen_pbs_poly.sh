#!/bin/bash

#21apps, not ready: WP

for benchmark in 2DCONV 3DCONV 2MM 3MM ATAX BICG CORR COVAR FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN
do
	    cat script_base_polybench.pbs | sed -e "s/2DCONV/$benchmark/g" > polybench/$benchmark/pbs_$benchmark.pbs
done