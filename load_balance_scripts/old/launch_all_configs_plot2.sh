#!/bin/sh

#cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/plot2/plot2_125gto48
#cd tsp_address_exp_gtoswl48_profile
#sh setup_ALL.sh approx_125coverage_gtoswl48
###################################################################################

#specify your config path in stor1
#configs_stor1=/stor1/hwang07/tsp_address_exp_gtoswl48_profile/

for configs_stor1 in /stor1/hwang07/plot2/plot2_125gto48 /stor1/hwang07/plot2/plot2_25gto48 /stor1/hwang07/plot2/plot2_50gto48 /stor1/hwang07/plot2/plot2_75gto48
do

#3MM
#FDTD-2D(Assertion `pI->get_opcode() == LD_OP' failed.)
#GRAMSCHM
#SYR2K(Illegal instruction)
#cd $configs_stor1
#cd polybench
#for benchmark in GESUMMV MVT 2MM SYRK ATAX BICG 2DCONV 3DCONV GEMM
#do
#cd $benchmark
#qsub pbs_$benchmark.pbs
#cd ..
#done

#Triad Scan(Assertion `pI->get_opcode() == LD_OP' failed.)
#QTC(Assertion `pI->get_opcode() == LD_OP' failed.)
cd $configs_stor1
cd shoc
for benchmark in  Spmv(unfixable) MD(unfixable) Stencil2D(need metric, only ACT_percLossInQoR NAN now) Reduction(need metric)
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#srad_v1 backprop lud hotspot
#nw(Assertion `pI->get_opcode() == LD_OP' failed.)
#pf_float(Assertion `t != m_TextureRefToCudaArray.end()' failed.)
cd $configs_stor1
cd rodinia
for benchmark in srad_v2(need metric)
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

# histo
cd $configs_stor1
cd parboil
for benchmark in lbm(segfault, but have output, try to have metric) spmv(Cannot open output file, but it seems fine, see ipc and try metric)
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#SLA CP TRA SCP CONS FWT LPS KMN NN(Assertion `pI->get_opcode() == LD_OP' failed.)
cd $configs_stor1
cd CUDA
for benchmark in JPEG(add it to see ipc) RAY(image changes now, GOLDoutput.bmp is missing, try) kmeans(seems good, try) BlackScholes(good, ready)
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

#PageViewCount(./Gen: No such file or directory. Assertion `pI->get_opcode() == LD_OP' failed.) 
#MatrixMul(Assertion `pI->get_opcode() == LD_OP' failed.)
#Kmeans(Assertion `space.get_type() == global_space' failed.)
#InvertedIndex (cat sample/1.html >> data/1.html. cat: sample/1.html: No such file or directory. Assertion `space.get_type() == global_space' failed.)
#PageViewRank (./Gen: No such file or directory. Assertion `pI->get_opcode() == LD_OP' failed.)
#SimilarityScore (Assertion `pI->get_opcode() == LD_OP' failed. Illegal instruction)
#WordCount (cat: sample: No such file or directory)
cd $configs_stor1
cd Mars
for benchmark in
do
cd $benchmark
qsub pbs_$benchmark.pbs
cd ..
done

done