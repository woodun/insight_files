#CUDA 7, BLK SCP on insight.
#for benchmark in CONS FWT LPS TRA
#do
#sh collect_all_configs_matlab.sh $benchmark CUDA
#done
######################################################
##applications which needs special care:

##CUDA KMN: Root Mean Squared Error:
#need to compute the distance with coverage 0 case, or adjust y axis range, otherwise it's too large and hard to see changes. 
sh collect_all_configs_matlab_KMN.sh KMN CUDA
########################################################
