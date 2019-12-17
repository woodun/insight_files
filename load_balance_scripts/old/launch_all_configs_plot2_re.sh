#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/plot2/plot2_125gto48
#cd tsp_address_exp_gtoswl48_profile
#sh setup_ALL.sh approx_125coverage_gtoswl48
###################################################################################

#specify your config path in stor1
#configs_stor1=/stor1/hwang07/tsp_address_exp_gtoswl48_profile/

for configs_stor1 in /stor1/hwang07/plot2/plot2_125gto48 /stor1/hwang07/plot2/plot2_25gto48 /stor1/hwang07/plot2/plot2_50gto48 /stor1/hwang07/plot2/plot2_75gto48
do

#FDTD-2D(good, ready)
#GRAMSCHM(branch divergence)
#SYR2K(good, ready)
cd $configs_stor1
cd polybench
for benchmark in FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#Spmv(unfixable) MD(unfixable) Stencil2D(need metric, only has ACT_percLossInQoR NAN now, add noskip) Reduction(need metric, already has diff, should be easy)
#Scan(ready)
#QTC(corrupted double-linked list:)
#Spmv MD Stencil2D Reduction
cd $configs_stor1
cd shoc
for benchmark in Scan
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#srad_v2(need metric)
#backprop lud hotspot(not interesting.)
#nw(good. metric needed.)
#pf_float(Assertion `t != m_TextureRefToCudaArray.end()' failed.)
#srad_v2
cd $configs_stor1
cd rodinia
for benchmark in srad_v1 nw
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#lbm(segfault, but have output, try to have metric) spmv(Cannot open output file, but it seems fine, see ipc and try metric)
#lbm spmv
cd $configs_stor1
cd parboil
for benchmark in 
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#JPEG(add it to see ipc) RAY(image changes now, GOLDoutput.bmp is missing, try) kmeans(seems good, try)
#SLA(good, ready)
#CP(no metric and not interesting)
#NN(good, metric needed)
#JPEG RAY kmeans
cd $configs_stor1
cd CUDA
for benchmark in SLA NN
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