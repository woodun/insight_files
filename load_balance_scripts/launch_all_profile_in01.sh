#too long: lbm, md, page view rank, page view count

for benchmark in CP LPS RAY STO SCP SLA CONS FWT TRA BFS MUM NN kmeans JPEG BFS2 KMN BlackScholes
do
sh launch_all_configs_per_app_profile_in01.sh $benchmark CUDA
done

###########################################################filtered
#for benchmark in 2DCONV 3DCONV 2MM 3MM ATAX BICG CORR COVAR FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK
#do
#sh launch_all_configs_per_app_profile_in01.sh $benchmark polybench
#done

#for benchmark in CP LPS RAY STO SCP SLA CONS FWT TRA BFS MUM NN kmeans JPEG BFS2 KMN BlackScholes
#do
#sh launch_all_configs_per_app_profile_in01.sh $benchmark CUDA
#done

#for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex WordCount
#do
#sh launch_all_configs_per_app_profile_in01.sh $benchmark Mars
#done

#for benchmark in spmv histo
#sh launch_all_configs_per_app_profile_in01.sh $benchmark parboil
#done

#for benchmark in heartwall streamcluster nw pathfinder lud srad_v1 srad_v2 pf_float
#do
#sh launch_all_configs_per_app_profile_in01.sh $benchmark rodinia
#done

#for benchmark in QTC Reduction Scan Spmv Stencil2D Triad BFS
#do
#sh launch_all_configs_per_app_profile_in01.sh $benchmark shoc
#done

########################lonestar############
#for benchmark in bh mst sssp sp bfs
#do
#sh launch_all_configs_per_app_in01.sh $benchmark lonestar
#done