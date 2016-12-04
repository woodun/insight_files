######################launched
#10
#for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM
#do
#sh launch_all_configs_approx.sh $benchmark polybench
#done

#5
#for benchmark in Triad
#do
#sh launch_all_configs_approx.sh $benchmark shoc
#done

#5
#TRA SCP LPS CONS FWT KMN
for benchmark in SCP
do
sh launch_all_configs_approx.sh $benchmark CUDA
done

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