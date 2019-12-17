######################launched
for benchmark in GESUMMV MVT 2MM SYRK ATAX BICG 3DCONV GEMM
do
sh collect_all_configs_bypass.sh $benchmark polybench
done

for benchmark in Triad
do
sh collect_all_configs_bypass.sh $benchmark shoc
done

#for benchmark in TRA SCP LPS CONS
#do
#sh collect_all_configs_bypass.sh $benchmark CUDA
#done

##figures:
for benchmark in histo
do
sh collect_all_configs_bypass_image.sh $benchmark parboil
done