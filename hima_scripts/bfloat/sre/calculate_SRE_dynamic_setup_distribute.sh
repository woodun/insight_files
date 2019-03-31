#!/bin/sh

########################################
source_dir=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_scripts/amc_paper/axbench_added/sre
mother_dir=/sciclone/pscr/hwang07/dsn_amc

#cd $1
cd $mother_dir

#for i in $(ls -d *)
for i in delay0_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay128_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delayA_remove0_e8_r0_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delay0_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delay0_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32 delay128_remove10_e8_r11_size128_gto48_pb4096_pe0_ww65536_c128_bw95_aw0_rw0_rp32 delayA_remove10D_e8_r11_size128_gto48_pb4096_pe4096_ww65536_c128_bw95_aw0_rw0_rp32
do

cd $i

rm calculate_SRE_configbase.pbs
rm calculate_SRE_configbase.sh
rm calculate_SRE_configbase_sciclone.pbs

cp $source_dir/calculate_SRE_configbase.pbs .
cp $source_dir/calculate_SRE_configbase.sh .
cp $source_dir/calculate_SRE_configbase_sciclone.pbs .
chmod +x calculate_SRE_configbase.sh
cd ..

done