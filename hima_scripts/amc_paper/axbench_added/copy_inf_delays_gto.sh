#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/inf_delays

for configs_stor1 in delay4096_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay2048_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay1024_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay512_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay256_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay128_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay64_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done

