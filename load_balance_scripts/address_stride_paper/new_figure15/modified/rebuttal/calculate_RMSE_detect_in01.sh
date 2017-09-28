#!/bin/sh

########################################
output=/stor2/hwang07/RMSE_re.txt

#cd $1
cd /stor2/hwang07/modified_tsp/

#for i in $(ls -d *)
for i in 
do

cd $i


cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
if [[ -s RMSE.txt ]]; then
pwd | xargs printf "%s "
echo 'ok'
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done
cd ..

#TRA CONS SCP
cd CUDA
for benchmark in SLA
do
cd $benchmark
if [[ -s RMSE.txt ]]; then
pwd | xargs printf "%s "
echo 'ok'
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done
cd ..


cd ..

done




cd /stor1/hwang07/modified_osp/

#for i in $(ls -d *)
for i in 
do

cd $i


cd polybench
for benchmark in GESUMMV SYR2K SYRK 2DCONV_EMBOSS 2DCONV_BLUR 3DCONV
do
cd $benchmark
if [[ -s RMSE.txt ]]; then
pwd | xargs printf "%s "
echo 'ok'
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done
cd ..

#TRA CONS SCP
cd CUDA
for benchmark in SLA
do
cd $benchmark
if [[ -s RMSE.txt ]]; then
pwd | xargs printf "%s "
echo 'ok'
else
pwd
pwd | xargs printf "%s " >> $output
fi
cd ..
done
cd ..


cd ..

done


