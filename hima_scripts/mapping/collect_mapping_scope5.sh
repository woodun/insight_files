#!/bin/sh

#specify your output file
output=/sciclone/pscr/hwang07/mapping_collection/hima_mapping_scope4_metrics.txt
mother_dir=/sciclone/pscr/hwang07/mapping_exp
#'gpu_tot_ipc =' 'average rbl =' 'r_blp_all=' 'r_eblp_all=' 'r_blc_all=' 'r_eblc_all=' 'r_rblc_all=' 'r_clp=' 'r_eclp=' 'r_clc=' 'r_eclc=' 'r_rclc=' 'r_waste_all=' 'dram_eff_all=' 'n_waste_all=' 'bw_util_all='
#'gpu_tot_ipc =' 'average rbl =' 'r_eblp_all=' 'r_eclp=' 'n_waste_all=' 'bw_util_all='
for statistics in 'gpu_tot_ipc =' 'average rbl =' 'r_eblp_all=' 'r_eclp=' 'n_waste_all=' 'bw_util_all=' 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate ='
do

printf "%s\r\n" $statistics >> $output

for configs_stor1 in mapping0_GTX480_sm32_cn8_sub1_bw1_bk32 mapping1_GTX480_sm32_cn8_sub1_bw1_bk32 mapping2_GTX480_sm32_cn8_sub1_bw1_bk32 mapping3_GTX480_sm32_cn8_sub1_bw1_bk32 mapping4_GTX480_sm32_cn8_sub1_bw1_bk32 mapping5_GTX480_sm32_cn8_sub1_bw1_bk32 mapping6_GTX480_sm32_cn8_sub1_bw1_bk32 mapping7_GTX480_sm32_cn8_sub1_bw1_bk32 mapping8_GTX480_sm32_cn8_sub1_bw1_bk32 mapping9_GTX480_sm32_cn8_sub1_bw1_bk32 mapping10_GTX480_sm32_cn8_sub1_bw1_bk32 mapping11_GTX480_sm32_cn8_sub1_bw1_bk32 mapping12_GTX480_sm32_cn8_sub1_bw1_bk32 mapping13_GTX480_sm32_cn8_sub1_bw1_bk32 mapping14_GTX480_sm32_cn8_sub1_bw1_bk32 mapping15_GTX480_sm32_cn8_sub1_bw1_bk32
do

cd $mother_dir
cd $configs_stor1
cd CUDA
for benchmark in BlackScholes CP LIB LPS NQU RAY STO SCP SLA CONS FWT TRA lulesh AES BFS MUM NN kmeans JPEG BFS2 KMN
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

#CORR COVAR
cd $mother_dir
cd $configs_stor1
cd polybench
for benchmark in 2DCONV 3DCONV 2MM 3MM ATAX BICG FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

cd $mother_dir
cd $configs_stor1
cd axbench
for benchmark in binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

cd $mother_dir
cd $configs_stor1
cd lonestar
for benchmark in bfs bh dmr mst sp sssp
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

cd $mother_dir
cd $configs_stor1
cd Mars
for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

cd $mother_dir
cd $configs_stor1
cd parboil
for benchmark in cutcp histo mm sad spmv lbm tpacf
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

cd $mother_dir
cd $configs_stor1
cd rodinia
for benchmark in backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" output_* | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done

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
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output
printf "\r\n" >> $output

done

#AX=I
#AE=I=EA,X=E
#AX=B
#EA=I,X=EB,AEB=B,B(I-AE)=0,AE=I if B has full rank
#if B does not have full rank, then AE=I cannot be deduced here (but still true)

