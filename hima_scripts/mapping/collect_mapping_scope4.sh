#!/bin/sh

#specify your output file
output=/sciclone/pscr/hwang07/mapping_collection/hima_mapping_scope3_metrics_more3.txt
mother_dir=/sciclone/pscr/hwang07/mapping_exp
#'gpu_tot_ipc =' 'average rbl =' 'r_blp_all=' 'r_eblp_all=' 'r_blc_all=' 'r_eblc_all=' 'r_rblc_all=' 'r_clp=' 'r_eclp=' 'r_clc=' 'r_eclc=' 'r_rclc=' 'r_waste_all=' 'dram_eff_all=' 'n_waste_all=' 'bw_util_all='
#'gpu_tot_ipc =' 'average rbl =' 'r_eblp_all=' 'r_eclp=' 'n_waste_all=' 'bw_util_all='
for statistics in 'L1D_total_cache_miss_rate =' 'L2_total_cache_miss_rate ='
do

printf "%s\r\n" $statistics >> $output

for configs_stor1 in nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_nodelay nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk64 nol2_mapping3_GTX480_sm32_cn8_sub1_bw32_bk32 nol2_mapping3_GTX480_sm32_cn16_sub1_bw1_bk32 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z4 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z8 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z16 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z32 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z64 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z128 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z256 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z512 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1024 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2048 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z4_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z8_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z16_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z32_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z64_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z128_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z256_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z512_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1024_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2048_overall nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1_overall3 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2_overall3 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z4_overall3 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z8_overall3 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z16_overall3 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z32_overall3 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z64_overall3 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z128_overall3 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z256_overall3 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z512_overall3 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z1024_overall3 nol2_mapping3_GTX480_sm32_cn8_sub1_bw1_bk32_x8_y1_z2048_overall3
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

