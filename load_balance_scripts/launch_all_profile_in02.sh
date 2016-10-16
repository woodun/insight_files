for benchmark in CP LPS RAY STO SCP SLA CONS FWT TRA AES BFS MUM NN kmeans JPEG BFS2 KMN BlackScholes lulesh
do
sh launch_all_configs_per_app_profile_in02.sh $benchmark CUDA
done

#for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
#do
#sh launch_all_configs_per_app_profile_in02.sh $benchmark Mars
#done

#for benchmark in spmv lbm
#do
#sh launch_all_configs_per_app_profile_in02.sh $benchmark parboil
#done

#for benchmark in heartwall cfd streamcluster nw pathfinder lud srad_v1 srad_v2 pf_float
#do
#sh launch_all_configs_per_app_profile_in02.sh $benchmark rodinia
#done

#for benchmark in MD QTC Reduction Scan Spmv Stencil2D Triad BFS
#do
#sh launch_all_configs_per_app_profile_in02.sh $benchmark shoc
#done
