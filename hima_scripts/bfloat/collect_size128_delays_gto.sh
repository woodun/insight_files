#!/bin/sh

#specify your output file
output=/sciclone/data10/hwang07/bfloat_collection/scope.txt
mother_dir=/sciclone/pscr/hwang07/bfloat_exp

for statistics in 'actual coverage all:' 'approximated_req_count_all:' 'total_access_count_all:' 'total_float_count_all:' 'total_int_count_all:' 'actual_redo:' 'actual_truncate:' 'bw_util=' 'dram_eff=' 'gpu_tot_ipc =' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate =' 'last threshold_length all:'
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
for configs_stor1 in sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_baseline sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_gto48_removeall sm30_cn6_queue128_remove0_thl16_pb4096_distributed1_fillapprox1_cachemode0_ratio4_gto48_removeall
do

#all: GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#removed: (input supposed to be int) 2DCONV_EMBOSS 2DCONV_BLUR
#removed: (high error) GRAMSCHM
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D SYR2K
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#8
#figures: srad_v1 histo JPEG RAY
#all: SCP FWT LPS BlackScholes SLA TRA CONS RAY
#removed: (little float) RAY
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in SCP FWT LPS BlackScholes SLA TRA CONS
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#10
#all: binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
#removed: (little float) binarization laplacian meanfilter sobel inversek2j
#input cannot be changed: blackscholes convolution jmeint newton-raph srad

#blackscholes convolution jmeint newton-raph srad
cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in blackscholes convolution jmeint newton-raph srad
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#all: SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
#todo: check if rand, enable output, run first and see their results, then decide what to print to compare and run again
#rand removed: InvertedIndex
#removed: (little float) SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
cd $mother_dir
cd $configs_stor1
cd Mars
for benchmark in 
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#all: bfs bh dmr mst sp sssp 
#removed: (run too long) bfs bh dmr mst sp sssp 
cd $mother_dir
cd $configs_stor1
cd lonestar
for benchmark in 
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#all: cutcp histo mm spmv sad lbm tpacf
#removed: (little float) sad cutcp

#histo mm spmv lbm tpacf
cd $mother_dir
cd $configs_stor1
cd parboil
for benchmark in histo mm spmv lbm tpacf 
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#all: backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
#removed: (little float) bfs pf_float

#backprop hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2
cd $mother_dir
cd $configs_stor1
cd rodinia
for benchmark in backprop hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#all: MD QTC Reduction Scan Spmv Stencil2D Triad BFS 

#MD QTC Reduction Scan Spmv Stencil2D Triad BFS 
cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in MD QTC Reduction Scan Spmv Stencil2D Triad BFS
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done


printf "\r\n" >> $output
done
######################################################################################################################################

printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output

done
