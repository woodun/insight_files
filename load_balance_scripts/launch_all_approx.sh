######################launched
#10: GRAMSCHM output NAN always. fdtd-2d assertion failed.
#for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM
#do
#sh launch_all_configs_approx.sh $benchmark polybench
#done

#for benchmark in 2DCONV 3DCONV FDTD-2D GEMM 3MM
#do
#sh launch_all_configs_approx.sh $benchmark polybench
#done
#GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM

#5
#Scan assertion failed. 
#for benchmark in Triad BFS Spmv MD Stencil2D
#do
#sh launch_all_configs_approx.sh $benchmark shoc
#done

#for benchmark in BFS MD Stencil2D
#do
#sh launch_all_configs_approx.sh $benchmark shoc
#done

#5
#SLA assertion failed. BlackScholes, JPEG, KMN not changing.
#for benchmark in TRA SCP LPS CONS FWT
#do
#sh launch_all_configs_approx.sh $benchmark CUDA
#done

#for benchmark in 
#do
#sh launch_all_configs_approx.sh $benchmark CUDA
#done
#JPEG TRA SCP

#1
#for benchmark in histo
#do
#sh launch_all_configs_approx.sh $benchmark parboil
#done

#2
#for benchmark in srad_v1 lud
#do
#sh launch_all_configs_approx.sh $benchmark rodinia
#done

for benchmark in srad_v1
do
sh launch_all_configs_approx.sh $benchmark rodinia
done
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