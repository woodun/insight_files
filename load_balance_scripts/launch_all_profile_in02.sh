#too long: lbm, md, page view rank, page view count


###########################################################filtered
#for benchmark in CP LPS RAY STO SCP SLA CONS FWT TRA BFS MUM NN kmeans JPEG BFS2 KMN BlackScholes
#do
#sh launch_all_configs_per_app_profile_in02.sh $benchmark CUDA
#done

#for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex WordCount
#do
#sh launch_all_configs_per_app_profile_in02.sh $benchmark Mars
#done

for benchmark in spmv histo
do
sh launch_all_configs_per_app_profile_in02.sh $benchmark parboil
done

for benchmark in heartwall streamcluster nw pathfinder lud srad_v1 srad_v2 pf_float
do
sh launch_all_configs_per_app_profile_in02.sh $benchmark rodinia
done

for benchmark in QTC Reduction Scan Spmv Stencil2D Triad BFS
do
sh launch_all_configs_per_app_profile_in02.sh $benchmark shoc
done

########################lonestar############
#for benchmark in bh mst sssp sp bfs
#do
#sh launch_all_configs_per_app_in02.sh $benchmark lonestar
#done