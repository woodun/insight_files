#!/bin/sh

########################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_dynamic_remove

#cd $1
cd $mother_dir

#for i in $(ls -d *)
for i in delay0_remove10D_e8_r11_size128_gto48_pw1024_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw2048_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw4096_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw16384_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw32768_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw65536_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10D_e8_r11_size128_gto48_pw131072_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e0_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e8_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e7_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e6_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e5_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e4_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e3_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e2_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200 delay0_remove10_e1_r11_size128_gto48_pw8192_ww8192_c128_bw85_aw1000_rw5000_rp200
do

cd $i
qsub calculate_SRE_configbase.pbs
cd ..

done