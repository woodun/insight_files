#!/bin/sh

#####################################################
mother_dir=/stor1/hwang07/sim4_test

#these configs use half buswidth by default
#test_gtx480 test_titanx 
#
for configs_stor1 in titanx_baseline titanx_ncache
do

#all: AlexNet CifarNet GRU LSTM ResNet SqueezeNet
cd $mother_dir
cd $configs_stor1
cd tango
for benchmark in AlexNet CifarNet GRU LSTM ResNet SqueezeNet
do
cd $benchmark
qsub in01_pbs_$benchmark.pbs
cd ..
done

done





