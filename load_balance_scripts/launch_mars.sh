#!/bin/bash

#8apps
#prediction rate too low: 
#bias too high: InvertedIndex
#bias high but not all: PageViewCount
#bias not high, but no less than 5%: Kmeans 
#too few misses: StringMatch
#good(top bias still good) 4: SimilarityScore, MatrixMul, PageViewRank, PageViewCount
#bw<15% && ipc>400(not interesting):
#coverage too low: WordCount
#4 for now(based on avg_bias):

for benchmark in SimilarityScore MatrixMul PageViewRank PageViewCount
do
sh launch_all_configs_per_app.sh $benchmark Mars
done
