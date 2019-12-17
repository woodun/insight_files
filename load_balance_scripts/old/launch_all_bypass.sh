######################launched
for benchmark in GESUMMV MVT 2MM SYRK ATAX BICG 3DCONV GEMM
do
sh launch_all_configs_bypass.sh $benchmark polybench
done

for benchmark in Triad
do
sh launch_all_configs_bypass.sh $benchmark shoc
done

#for benchmark in TRA SCP LPS CONS
#do
#sh launch_all_configs_bypass.sh $benchmark CUDA
#done

for benchmark in histo
do
sh launch_all_configs_bypass.sh $benchmark parboil
done