#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/size128_profile

for configs_stor1 in delay0_remove0_e8_r0_size128_gto48_pw8192_ww32768_c64_bw95_aw1000_rw5000 delay0_remove0_e8_r0_size128_gto48_pw16384_ww32768_c64_bw95_aw2000_rw10000 delay0_remove0_e8_r0_size128_gto48_pw32768_ww32768_c64_bw95_aw4000_rw20000 delay0_remove0_e8_r0_size128_gto48_pw65536_ww32768_c64_bw95_aw8000_rw40000 delay0_remove0_e8_r0_size128_gto48_pw131072_ww32768_c64_bw95_aw16000_rw80000 delay0_remove0_e8_r0_size128_gto48_pw262144_ww32768_c64_bw95_aw32000_rw160000 delay0_remove0_e8_r0_size128_gto48_pw524288_ww32768_c64_bw95_aw64000_rw320000 delay0_remove0_e8_r0_size128_gto48_pw1048576_ww32768_c64_bw95_aw128000_rw640000
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done









