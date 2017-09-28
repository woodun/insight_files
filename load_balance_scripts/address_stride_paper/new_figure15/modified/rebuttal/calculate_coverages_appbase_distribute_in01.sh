#!/bin/sh

########################################
source_dir=/stor1/hwang07/insight_files/load_balance_scripts/address_stride_paper/new_figure15/modified/rebuttal

#cd $1
cd /stor1/hwang07/rebuttal_tsp/

for i in $(ls -d *)
#for i in 
do

cd $i


cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark

rm appbase_in01.pbs
rm appbase_in02.pbs
cat $source_dir/script_base_in01.pbs | sed -e "s/JPEG/$benchmark/g" | sed -e "s/CUDA/polybench/g" > appbase_in01.pbs
cat $source_dir/script_base_in02.pbs | sed -e "s/JPEG/$benchmark/g" | sed -e "s/CUDA/polybench/g" > appbase_in02.pbs
chmod +x appbase_in01.pbs
chmod +x appbase_in02.pbs

cd ..
done
cd ..

###########

cd CUDA
for benchmark in SLA TRA CONS SCP
do
cd $benchmark

rm appbase_in01.pbs
rm appbase_in02.pbs
cat $source_dir/script_base_in01.pbs | sed -e "s/JPEG/$benchmark/g" > appbase_in01.pbs
cat $source_dir/script_base_in02.pbs | sed -e "s/JPEG/$benchmark/g" > appbase_in02.pbs
chmod +x appbase_in01.pbs
chmod +x appbase_in02.pbs

cd ..
done
cd ..


cd ..

done
