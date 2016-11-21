#for benchmark in SLA TRA SCP BlackScholes LPS CONS FWT KMN
#do
#sh launch_all_configs_eb.sh $benchmark CUDA
#done

for benchmark in BFS2
do
sh launch_all_configs_eb.sh $benchmark CUDA
done
#LPS CONS FWT
