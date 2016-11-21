#for benchmark in SLA TRA SCP BlackScholes LPS CONS FWT KMN JPEG
#do
#sh collect_all_configs_eb.sh $benchmark CUDA
#done

for benchmark in BFS2
do
sh collect_all_configs_eb.sh $benchmark CUDA
done
