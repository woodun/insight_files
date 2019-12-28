#!/bin/sh

#specify your output file
output=/stor1/hwang07/sim4_test/test3.txt
mother_dir=/stor1/hwang07/sim4_test

for statistics in 'gpu_tot_ipc =' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate =' 'bw_util=' 'gpu_tot_ipc =' 'gpu_tot_occupancy =' 'gpgpu_simulation_rate ='
do

printf "%s\r\n" $statistics >> $output

#specify your config path in stor1
#test_gtx480 test_titanx
for configs_stor1 in titanx_baseline titanx_ncache titanx_baseline_l1 titanx_ncache_l1 titanx_halfncache titanx_halfncache_l1 titanx_32bline titanx_32bline_l1
do

#15
#all: GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#removed: (input supposed to be int) 2DCONV_EMBOSS 2DCONV_BLUR
#removed: (high error) GRAMSCHM
#modified: GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
#input cannot be changed: 
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in GESUMMV MVT 2MM 3MM SYRK ATAX BICG 2DCONV_EMBOSS 2DCONV_BLUR 2DCONV 3DCONV GEMM FDTD-2D GRAMSCHM SYR2K
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#8
#figures: srad_v1 histo JPEG RAY
#all: SCP FWT LPS BlackScholes SLA TRA CONS RAY
#removed: (little float) RAY
#modified: SCP FWT BlackScholes SLA TRA CONS
#input cannot be changed: LPS
#seg fault on gpgpusim4: SCP
cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in FWT LPS BlackScholes SLA TRA CONS RAY
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#10
#all: binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
#removed: (little float) binarization laplacian meanfilter sobel inversek2j
#input cannot be changed: blackscholes convolution jmeint newton-raph srad
cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#all: SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
#todo: check if rand, enable output, run first and see their results, then decide what to print to compare and run again
#rand removed: InvertedIndex
#removed: (little float) SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
#seg fault on gpgpusim4: SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
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
#cannot finish 72h: mst sssp
#53042 Floating point exception: dmr
cd $mother_dir
cd $configs_stor1
cd lonestar
for benchmark in bfs bh sp
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#all: cutcp histo mm spmv sad lbm tpacf
#removed: (little float) sad cutcp
#seg fault on gpgpusim4: histo sad
cd $mother_dir
cd $configs_stor1
cd parboil
for benchmark in cutcp mm spmv lbm tpacf
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#all: backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
#removed: (little float) bfs pf_float
#cannot finish 72h: cfd
#Error - Cannot detect the app's CUDA version: streamcluster
#seg fault on gpgpusim4: lud
#does not compile with cuda 4.2: leukocyte
#malloc(): memory corruption: pf_float
cd $mother_dir
cd $configs_stor1
cd rodinia
for benchmark in backprop bfs hotspot heartwall nw pathfinder srad_v1 srad_v2
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#all: MD QTC Reduction Scan Spmv Stencil2D Triad BFS
#seg fault on gpgpusim4: MD QTC Reduction Scan Spmv Stencil2D Triad BFS
cd $mother_dir
cd $configs_stor1
cd shoc
for benchmark in 
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#all: AlexNet CifarNet GRU LSTM ResNet SqueezeNet
cd $mother_dir
cd $configs_stor1
cd tango
for benchmark in AlexNet CifarNet GRU LSTM ResNet SqueezeNet
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
printf "\r\n" >> $output

done
