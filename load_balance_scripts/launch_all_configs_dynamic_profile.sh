#!/bin/sh

ERROR: Failed to execute: $CUDA_INSTALL_PATH/bin/cuobjdump -ptx -elf -sass /stor2/sparsh/applications/benchmarks/shoc/bin/Serial/CUDA/Spmv > _cuobjdump_complete_output_SCtvWZ
cannot get section: .strtab
cannot get section: .shstrtab
cannot get section: .symtab 
cuobjdump error   : Disassembler for architecture sm_0 could not be found

#cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/dynamic_profile_S/dynamic_on_gto48
#cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/dynamic_profile_S/dynamic_off_gto48
#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/dynamic_profile_S/dynamic_on_RR48
#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/dynamic_profile_S/dynamic_off_RR48
#cd dynamic_on_gto48
#cd dynamic_off_gto48
#cd dynamic_on_RR48
#cd dynamic_off_RR48
#sh setup_ALL.sh dynamic_on_gto48
#sh setup_ALL.sh dynamic_off_gto48
#sh setup_ALL.sh dynamic_on_RR48
#sh setup_ALL.sh dynamic_off_RR48
###################################################################################

#specify your config path in stor1
#configs_stor1=/stor1/hwang07/tsp_address_exp_gtoswl48_profile/

for configs_stor1 in /stor1/hwang07/dynamic_profile_S/dynamic_on_gto48 /stor1/hwang07/dynamic_profile_S/dynamic_off_gto48 /stor2/hwang07/dynamic_profile_S/dynamic_on_RR48 /stor2/hwang07/dynamic_profile_S/dynamic_off_RR48
do

#13
#2DCONV 1s
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#figures: JPEG RAY srad_v1 histo
#7
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS BlackScholes SLA
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done