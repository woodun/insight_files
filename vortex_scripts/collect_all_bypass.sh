######################launched
for benchmark in TRA SCP LPS CONS
do
sh collect_all_configs_bypass.sh $benchmark CUDA
done

###grep for root mean:
sh collect_all_configs_bypass_KMN.sh KMN CUDA