#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor2/hwang07/all_off_S/all_off_gto48
#cd dynamic_gto48
#sh setup_ALL.sh tsp_address_exp_gtoswl48_alloff

###################################################################################

#specify your config path in stor2
for configs_stor1 in /stor2/hwang07/all_off_S/all_off_gto48
do

#FDTD-2D(good, ready)
#GRAMSCHM(branch divergence)
#SYR2K(good, ready)
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#Spmv(unfixable) MD(unfixable) Stencil2D(need metric, only has ACT_percLossInQoR NAN now, add noskip) Reduction(need metric, already has diff, should be easy)
#Scan(ready)
#QTC(corrupted double-linked list:)
cd $configs_stor1
cd shoc
for benchmark in Triad Scan Spmv MD Stencil2D Reduction
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#srad_v2(need metric)
#backprop lud hotspot(not interesting.)
#nw(good. metric needed.)
#pf_float(Assertion `t != m_TextureRefToCudaArray.end()' failed.)
cd $configs_stor1
cd rodinia
for benchmark in srad_v1 nw srad_v2
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#lbm(segfault, but have output, try to have metric) spmv(Cannot open output file, but it seems fine, see ipc and try metric)
cd $configs_stor1
cd parboil
for benchmark in histo lbm spmv
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#JPEG(add it to see ipc) RAY(image changes now, GOLDoutput.bmp is missing, try) kmeans(seems good, try)
#SLA(good, ready)
#CP(no metric and not interesting)
#NN(good, metric needed)
cd $configs_stor1
cd CUDA
for benchmark in TRA SCP CONS FWT LPS KMN BlackScholes SLA NN JPEG RAY kmeans
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#PageViewCount(ERROR * access to memory 'global' is unaligned) 

#Kmeans(Assertion `isspace_shared(smid, addr)' failed.)
#InvertedIndex (addr_t generic_to_shared(unsigned int, addr_t): Assertion `isspace_shared(smid, addr)' failed.)
#PageViewRank (Assertion `block_address == line_size_based_tag_func(addr+data_size_coales-1,segment_size)' failed.)
#SimilarityScore (Assertion `isspace_shared(smid, addr)' failed.)
#WordCount (Assertion `isspace_shared(smid, addr)' failed.)
#MatrixMul(Assertion `isspace_shared(smid, addr)' failed)
cd $configs_stor1
cd Mars
for benchmark in
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done