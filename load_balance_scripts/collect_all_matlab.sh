#all configurations finished for these application

for benchmark in GESUMMV MVT 2MM SYRK 3MM ATAX BICG 2DCONV 3DCONV GEMM
do
sh collect_all_configs_matlab.sh $benchmark polybench
done

###Spmv 100% coverage doesn't finish
for benchmark in Triad Spmv
do
sh collect_all_configs_matlab.sh $benchmark shoc
done

for benchmark in SCP
do
sh collect_all_configs_matlab.sh $benchmark CUDA
done

##applications which needs special care:
##figure output: parboil histo, CUDA JPEG, rodinia srad_v1
##CUDA KMN: 

##CUDA BLK: Max absolute error:
#GTO48:Max absolute error: 6.124154E+01
#ACT_percLossInQoR 2.338000E+01

#RR48:Max absolute error: 7.390916E+01
#ACT_percLossInQoR 2.182000E+01

#GOT1:Max absolute error: 6.883872E+01
#ACT_percLossInQoR 2.218000E+01


###100% coverage for histo doesn't finish
for benchmark in histo
do
sh collect_all_configs_matlab.sh $benchmark parboil
done

sh collect_all_configs_matlab_MD.sh GRAMSCHM polybench

###the status for lud is unknown
sh collect_all_configs_matlab_MD.sh lud rodinia

###the status for MD is unknown
sh collect_all_configs_matlab_MD.sh MD shoc

