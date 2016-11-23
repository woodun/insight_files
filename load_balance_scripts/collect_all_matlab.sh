for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM
do
sh collect_all_configs_matlab.sh $benchmark polybench
done

for benchmark in Triad Spmv
do
sh collect_all_configs_matlab.sh $benchmark shoc
done

for benchmark in SCP
do
sh collect_all_configs_matlab.sh $benchmark CUDA
done
