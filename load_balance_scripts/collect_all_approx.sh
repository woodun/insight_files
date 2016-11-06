######################launched
#12
for benchmark in 2DCONV 3DCONV FDTD-2D GEMM GESUMMV GRAMSCHM MVT 2MM SYRK 3MM ATAX BICG
do
sh collect_all_configs_approx.sh $benchmark polybench
done

#2
#for benchmark in Triad Scan
#do
#sh collect_all_configs_approx.sh $benchmark shoc
#done

#4
for benchmark in SLA TRA SCP BlackScholes
do
sh collect_all_configs_approx.sh $benchmark CUDA
done
######################waiting
#13
#for benchmark in LPS RAY CONS FWT BFS MUM NN kmeans BFS2 KMN CP STO JPEG
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

#1
#for benchmark in SYR2K
#do
#sh launch_all_configs_approx.sh $benchmark polybench
#done