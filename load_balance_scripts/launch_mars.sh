#!/bin/bash

#8apps
#prediction rate too low: 
#bias too high: InvertedIndex
#bias high but not all: PageViewCount
#good: SimilarityScore Kmeans MatrixMul WordCount PageViewRank StringMatch
#7 for now

for benchmark in SimilarityScore Kmeans MatrixMul WordCount PageViewRank StringMatch PageViewCount
do
sh launch_all_configs_per_app.sh $benchmark Mars
done
