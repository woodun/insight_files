#!/bin/sh

########################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_dynamic_all

#cd $1
cd $mother_dir

#for i in $(ls -d *)
for i in delay128_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delay128_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delay0_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delay0_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32
do

cd $i
qsub calculate_SRE_configbase.pbs
#qsub calculate_SRE_configbase_sciclone.pbs
cd ..

done