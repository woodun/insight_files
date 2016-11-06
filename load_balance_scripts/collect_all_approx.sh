######################launched
#9
for benchmark in 2DCONV 3DCONV FDTD-2D GEMM GESUMMV GRAMSCHM MVT 2MM SYRK
do
sh collect_all_configs_approx.sh $benchmark polybench
done

######################waiting
#17
#for benchmark in LPS RAY SCP SLA CONS FWT TRA BFS MUM NN kmeans BFS2 KMN BlackScholes CP STO JPEG
#do
#sh launch_all_configs_approx.sh $benchmark CUDA
#done

#6
#for benchmark in Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank WordCount
#do
#sh launch_all_configs_approx.sh $benchmark Mars
#done

#2
#for benchmark in lbm histo
#do
#sh launch_all_configs_approx.sh $benchmark parboil
#done

#2
#for benchmark in nw lud
#do
#sh launch_all_configs_approx.sh $benchmark rodinia
#done

#4
#for benchmark in MD QTC Spmv BFS
#do
#sh launch_all_configs_approx.sh $benchmark shoc
#done

#4
#for benchmark in 3MM ATAX BICG SYR2K
#do
#sh launch_all_configs_approx.sh $benchmark polybench
#done