#!/bin/sh
#this one works with applications_modified //how does mapping work? what is l2 dram correspondance (how is it mapped)? why is blp and rbl decises waste bw? how to understand waste (waste = n_activity - bwutil)?
#should the window length related to the dram delays (e.g., RCD)?
#-gpgpu_mem_address_mask 1
#-gpgpu_mem_addr_mapping dramid@8;00000000.00000000.00000000.00000000.0000RRRR.RRRRRRRR.BBBCCCCB.CCSSSSSS

#same bank missing && different bank missing = different banks to overlap RCDs.
#same bank hit && different bank missing = optimal distribution depends on number of requests, RCD, CCD. most likely same bank.
#same bank missing && different bank hit = different banks.
#same bank hit && different bank hit = different banks.
#rows with high entropy should go to channels and banks with high entropy (can we see from the overall entropy figure? windows size (TB or delays) is important.)
#rows with low entropy should go to channels and banks with low entropy (any on the fly schemes possible?)
#(overall rows entropy available. After applying scheme is entropy figure there? What about individual high entropy and low entropy rows figure? Are they mapped correctly after applying their scheme?)
#two mappings together?
#when is it better to have high/low entropy?(according to dram timing?) when is it better to split high/low entropy bits (by making other bits' entropy higher/lower)?
#could the reverse BIM be used to decrease entropy of row bits?
#how can we identify high or low entropy at run time. Can we get the entropy per window? is there entropy phase change in run time?
#how the mapping to L1 is done in mohammed's case?
#channel imbalance: scheduling policy according to it? 
#clp is 1: locality is too good? mix column bits as well? both ml and heuristic approach to decide if mix column bits or not?
#applications with high rbl and low clp: what happens if split the rows?

#how could RBL even be affected by interleaving?
#how to make other bits unaffected if adding channel?
#is warp_inst_t global or dedicate
#####################################################
mother_dir=/sciclone/pscr/hwang07/mapping_exp
#mappingx_GTX480_8_1 mapping4_GTX480_8_1 mapping5_GTX480_8_1 mappingx2_GTX480_8_1 mappingx3_GTX480_8_1
for configs_stor1 in mapping6_GTX480_8_1 mapping7_GTX480_8_1
do

cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in BlackScholes CP LIB LPS NQU RAY STO SCP SLA CONS FWT TRA lulesh AES BFS MUM NN kmeans JPEG BFS2 KMN
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

#CORR COVAR
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV 3DCONV 2MM 3MM ATAX BICG FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd lonestar
for benchmark in bfs bh dmr mst sp sssp
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd Mars
for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd parboil
for benchmark in cutcp histo mm sad spmv lbm tpacf
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd rodinia
for benchmark in backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in MD QTC Reduction Scan Spmv Stencil2D Triad BFS
do
cd $benchmark
qsub sci_pbs_$benchmark.pbs
cd ..
done

done















