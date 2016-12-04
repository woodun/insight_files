######################launched
#for benchmark in GESUMMV MVT 2MM SYRK ATAX BICG 3DCONV GEMM
#do
#sh collect_all_configs_tsp.sh $benchmark polybench
#done

#for benchmark in Triad
#do
#sh collect_all_configs_tsp.sh $benchmark shoc
#done

#TRA SCP LPS CONS KMN
for benchmark in SCP
do
sh collect_all_configs_tsp.sh $benchmark CUDA
done

##figures:
#for benchmark in histo
#do
#sh collect_all_configs_tsp_image.sh $benchmark parboil
#done