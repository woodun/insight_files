#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/plot2_S/plot2_125coverage_gto48
#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/plot2_S/plot2_25coverage_gto48
#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/plot2_S/plot2_50coverage_gto48
#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/plot2_S/plot2_75coverage_gto48
#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/plot2_S/plot2_100coverage_gto48

#cd plot2_125coverage_gto48
#cd plot2_25coverage_gto48
#cd plot2_50coverage_gto48
#cd plot2_75coverage_gto48
#cd plot2_100coverage_gto48

#sh setup_ALL.sh plot2_125coverage_gto48
#sh setup_ALL.sh plot2_25coverage_gto48
#sh setup_ALL.sh plot2_50coverage_gto48
#sh setup_ALL.sh plot2_75coverage_gto48
#sh setup_ALL.sh plot2_100coverage_gto48
#####################################################

#specify your config path in stor1
for configs_stor1 in /stor2/hwang07/plot2_S/plot2_125coverage_gto48 /stor2/hwang07/plot2_S/plot2_25coverage_gto48 /stor2/hwang07/plot2_S/plot2_50coverage_gto48 /stor2/hwang07/plot2_S/plot2_75coverage_gto48 /stor2/hwang07/plot2_S/plot2_100coverage_gto48
do

#13
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: srad_v1 histo JPEG RAY
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA JPEG RAY
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $configs_stor1
cd rodinia
for benchmark in srad_v1
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

cd $configs_stor1
cd parboil
for benchmark in histo
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done