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
#blp & blc & WASTE & waste (cycles) & eblp (effective blp) $ clp & clc & eclp
#####################################################
mother_dir=/sciclone/pscr/hwang07/mapping_exp

#mapping3_GTX480_sm32_cn8_sub1_bw1_bk32 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_nodelay mapping3_GTX480_sm32_cn8_sub1_bw1_bk64 mapping3_GTX480_sm32_cn8_sub1_bw32_bk32 mapping3_GTX480_sm32_cn16_sub1_bw1_bk32 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z4 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z8 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z16 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z32 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z64 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z128 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z256 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z512 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1024 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2048

#mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1_overall mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2_overall mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z4_overall mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z8_overall mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z16_overall mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z32_overall mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z64_overall mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z128_overall mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z256_overall mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z512_overall mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1024_overall mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2048_overall

for configs_stor1 in mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1_overall3 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2_overall3 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z4_overall3 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z8_overall3 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z16_overall3 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z32_overall3 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z64_overall3 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z128_overall3 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z256_overall3 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z512_overall3 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1024_overall3 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2048_overall3
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















