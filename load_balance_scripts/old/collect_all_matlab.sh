#all configurations finished for these application
#polybench 10
for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM
do
sh collect_all_configs_matlab.sh $benchmark polybench
done
######################################################
#shoc 1
for benchmark in Triad
do
sh collect_all_configs_matlab.sh $benchmark shoc
done
######################################################
#CUDA 7, CONS FWT LPS TRA KMN on vortex.
for benchmark in SCP
do
sh collect_all_configs_matlab.sh $benchmark CUDA
done
######################################################
##applications which needs special care:

##CUDA KMN: Root Mean Squared Error:
#need to compute the distance with coverage 0 case, or adjust y axis range, otherwise it's too large and hard to see changes. 
#sh collect_all_configs_matlab_KMN.sh KMN CUDA

##CUDA BLK: Max absolute error:
sh collect_all_configs_matlab_BLK.sh BlackScholes CUDA

#GTO48:Max absolute error: 6.124154E+01
#ACT_percLossInQoR 2.338000E+01
#RR48:Max absolute error: 7.390916E+01
#ACT_percLossInQoR 2.182000E+01
#GOT1:Max absolute error: 6.883872E+01
#ACT_percLossInQoR 2.218000E+01
########################################################
##figure output: parboil histo, rodinia srad_v1
#parboil 1
###100% coverage for histo doesn't finish
sh collect_all_configs_matlab_image.sh histo parboil
#rodinia 1
#sh collect_all_configs_matlab_image.sh srad_v1 rodinia
