######################launched
#12
#for benchmark in 2DCONV 3DCONV FDTD-2D GEMM GESUMMV GRAMSCHM MVT 2MM SYRK 3MM ATAX BICG
#do
#sh launch_all_configs_approx.sh $benchmark polybench
#done

for benchmark in ATAX
do
sh launch_all_configs_approx.sh $benchmark polybench
done

#5
#for benchmark in Triad Scan BFS Spmv
#do
#sh launch_all_configs_approx.sh $benchmark shoc
#done

#for benchmark in MD Stencil2D
#do
#sh launch_all_configs_approx.sh $benchmark shoc
#done

#9
#for benchmark in SLA TRA SCP BlackScholes LPS CONS FWT KMN JPEG
#do
#sh launch_all_configs_approx.sh $benchmark CUDA
#done

#for benchmark in JPEG
#do
#sh launch_all_configs_approx.sh $benchmark CUDA
#done

#1
#for benchmark in histo
#do
#sh launch_all_configs_approx.sh $benchmark parboil
#done

#1
#for benchmark in srad_v1 lud
#do
#sh launch_all_configs_approx.sh $benchmark rodinia
#done
######################waiting
#8
#for benchmark in RAY BFS MUM NN kmeans BFS2 CP STO
#do
#sh launch_all_configs_approx.sh $benchmark CUDA
#done

#6
#for benchmark in Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank WordCount
#do
#sh launch_all_configs_approx.sh $benchmark Mars
#done

#1
#for benchmark in lbm
#do
#sh launch_all_configs_approx.sh $benchmark parboil
#done

#1
#for benchmark in nw
#do
#sh launch_all_configs_approx.sh $benchmark rodinia
#done

#1
#for benchmark in QTC
#do
#sh launch_all_configs_approx.sh $benchmark shoc
#done

#1
#for benchmark in SYR2K
#do
#sh launch_all_configs_approx.sh $benchmark polybench
#done