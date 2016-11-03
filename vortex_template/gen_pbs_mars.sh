#!/bin/bash

#8apps

for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
do
	    cat script_base_mars.pbs | sed -e "s/LPS/$benchmark/g" > Mars/$benchmark/pbs_$benchmark.pbs
done
