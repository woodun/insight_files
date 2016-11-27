for benchmark in GESUMMV MVT SYRK 2MM ATAX BICG 3DCONV GEMM
do
sh collect_all_configs_matlab.sh $benchmark polybench
done

#CONS and LPS are don vortex.
for benchmark in SCP
do
sh collect_all_configs_matlab.sh $benchmark CUDA
done

