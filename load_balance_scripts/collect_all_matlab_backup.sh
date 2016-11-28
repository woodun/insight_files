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
