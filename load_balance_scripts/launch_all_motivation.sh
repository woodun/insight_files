#17
for benchmark in LPS RAY SCP SLA CONS FWT TRA BFS MUM NN kmeans BFS2 KMN BlackScholes CP STO JPEG
do
sh launch_all_configs_per_app_profile_in01.sh $benchmark CUDA
done

#6
for benchmark in Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank WordCount
do
sh launch_all_configs_per_app_profile_in01.sh $benchmark Mars
done

#2
for benchmark in lbm histo
sh launch_all_configs_per_app_profile_in02.sh $benchmark parboil
done

#2
for benchmark in nw lud
do
sh launch_all_configs_per_app_profile_in02.sh $benchmark rodinia
done

#4
for benchmark in MD QTC Spmv BFS
do
sh launch_all_configs_per_app_profile_in02.sh $benchmark shoc
done

#13
for benchmark in 2DCONV 3DCONV 3MM ATAX BICG FDTD-2D GEMM GESUMMV GRAMSCHM MVT 2MM SYR2K SYRK
do
sh launch_all_configs_per_app_profile_in02.sh $benchmark polybench
done