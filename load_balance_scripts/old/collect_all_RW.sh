#ATAX
for benchmark in GESUMMV MVT 2MM SYRK 3MM BICG 2DCONV 3DCONV GEMM
do
sh collect_all_configs_RW.sh $benchmark polybench
done

for benchmark in Triad Spmv
do
sh collect_all_configs_RW.sh $benchmark shoc
done

for benchmark in SCP
do
sh collect_all_configs_RW.sh $benchmark CUDA
done

sh collect_all_configs_RW.sh GRAMSCHM polybench
sh collect_all_configs_RW.sh lud rodinia
sh collect_all_configs_RW.sh MD shoc