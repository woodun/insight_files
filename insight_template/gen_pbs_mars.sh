#!/bin/bash

    if [ "$1" = 1 ]; then
        machine=in01
    else
        machine=in02
    fi

for benchmark in PageViewCount PageViewRank SimilarityScore StringMatch WordCount InvertedIndex Kmeans MatrixMul
do
	    cat script_base_mars.pbs | sed -e "s/LPS/$benchmark/g" > Mars/$benchmark/pbs_$benchmark.pbs
            cat script_base_mars.pbs | sed -e "s/compute/$machine/g" > CUDA/$benchmark/pbs_$benchmark.pbs
done
