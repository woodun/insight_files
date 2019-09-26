#!/bin/bash

#CUDA
#21apps, not ready: WP
for benchmark in CP LIB LPS NQU RAY STO SCP SLA CONS FWT TRA AES BFS MUM NN kmeans JPEG BFS2 KMN BlackScholes lulesh JPEG_ENCODE JPEG_DECODE
do
	    cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in01/g" | sed -e "s/benchsuite/CUDA/g" > CUDA/$benchmark/in01_pbs_$benchmark.pbs
		cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in02/g" | sed -e "s/benchsuite/CUDA/g" > CUDA/$benchmark/in02_pbs_$benchmark.pbs
done

#polybench
for benchmark in 2DCONV 3DCONV 2MM 3MM ATAX BICG CORR COVAR FDTD-2D GEMM GESUMMV GRAMSCHM MVT SYR2K SYRK 2DCONV_BLUR 2DCONV_EDGE 2DCONV_EMBOSS 2DCONV_ENHANCE 2DCONV_SHARPEN
do
	    cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in01/g" | sed -e "s/benchsuite/polybench/g" > polybench/$benchmark/in01_pbs_$benchmark.pbs
		cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in02/g" | sed -e "s/benchsuite/polybench/g" > polybench/$benchmark/in02_pbs_$benchmark.pbs
done

#axbench
for benchmark in binarization blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
do
	    cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in01/g" | sed -e "s/benchsuite/axbench/g" > axbench/$benchmark/in01_pbs_$benchmark.pbs
		cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in02/g" | sed -e "s/benchsuite/axbench/g" > axbench/$benchmark/in02_pbs_$benchmark.pbs
done

#lonestar
#6apps
for benchmark in bfs bh dmr mst sp sssp
do
	    cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in01/g" | sed -e "s/benchsuite/lonestar/g" > lonestar/$benchmark/in01_pbs_$benchmark.pbs
		cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in02/g" | sed -e "s/benchsuite/lonestar/g" > lonestar/$benchmark/in02_pbs_$benchmark.pbs
done

#Mars
#8apps
for benchmark in SimilarityScore Kmeans MatrixMul InvertedIndex PageViewCount PageViewRank StringMatch WordCount
do
	    cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in01/g" | sed -e "s/benchsuite/mars/g" > Mars/$benchmark/in01_pbs_$benchmark.pbs
		cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in02/g" | sed -e "s/benchsuite/mars/g" > Mars/$benchmark/in02_pbs_$benchmark.pbs
done

#parboil
#7apps
for benchmark in cutcp histo mm sad spmv lbm tpacf
do
	    cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in01/g" | sed -e "s/benchsuite/parboil/g" > parboil/$benchmark/in01_pbs_$benchmark.pbs
		cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in02/g" | sed -e "s/benchsuite/parboil/g" > parboil/$benchmark/in02_pbs_$benchmark.pbs
done

#rodinia
#13apps
for benchmark in backprop bfs hotspot heartwall cfd streamcluster nw pathfinder lud leukocyte srad_v1 srad_v2 pf_float
do
	    cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in01/g" | sed -e "s/benchsuite/rodinia/g" > rodinia/$benchmark/in01_pbs_$benchmark.pbs
		cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in02/g" | sed -e "s/benchsuite/rodinia/g" > rodinia/$benchmark/in02_pbs_$benchmark.pbs
done

#shoc
#8apps
for benchmark in MD QTC Reduction Scan Spmv Stencil2D Triad BFS
do
	    cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in01/g" | sed -e "s/benchsuite/shoc/g" > shoc/$benchmark/in01_pbs_$benchmark.pbs
		cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in02/g" | sed -e "s/benchsuite/shoc/g" > shoc/$benchmark/in02_pbs_$benchmark.pbs
done

#tango
#6apps
for benchmark in AlexNet CifarNet GRU LSTM ResNet SqueezeNet
do
	    cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in01/g" | sed -e "s/benchsuite/tango/g" > tango/$benchmark/in01_pbs_$benchmark.pbs
		cat script_base_general.pbs | sed -e "s/appname/$benchmark/g" | sed -e "s/compute/in02/g" | sed -e "s/benchsuite/tango/g" > tango/$benchmark/in02_pbs_$benchmark.pbs
done
