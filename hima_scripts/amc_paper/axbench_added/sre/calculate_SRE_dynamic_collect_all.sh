#!/bin/sh

########################################input mother dir path
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_dynamic_all
output=/sciclone/data10/hwang07/GPU_RESEARCH/amc_collection/RE_all2.txt
statistics='RE:'

#cd $1
cd $mother_dir

#for i in $(ls -d *)
for i in delay128_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delay128_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delay0_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delay0_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove15D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove20D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove25D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove30D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove35D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove40D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove45D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove50D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32
do

cd $i


cd polybench
for benchmark in GESUMMV MVT 2MM 3MM ATAX BICG 3DCONV GEMM
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..

cd CUDA
for benchmark in TRA SCP CONS FWT LPS SLA RAY
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..

cd axbench
for benchmark in blackscholes convolution inversek2j jmeint laplacian meanfilter newton-raph sobel srad
do
cd $benchmark
grep -o "$statistics[ ]*[-eE\+0-9\.]*" RE.txt | tail -1 | sed -e "s/$statistics[ ]*\(-$\)*//g" | xargs printf "0%s " >> $output
cd ..
done
cd ..

cd ..

printf "\r\n" >> $output

done