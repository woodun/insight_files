#!/bin/bash

#8apps

for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
do
sh launch_all_configs_per_app.sh $benchmark Mars
done
