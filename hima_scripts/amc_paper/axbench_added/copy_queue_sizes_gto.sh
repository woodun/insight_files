#!/bin/sh

template=/sciclone/data10/hwang07/GPU_RESEARCH/insight_files/hima_template

#####################################################################################
mother_dir=/sciclone/data10/hwang07/GPU_RESEARCH/amc/queue_sizes

for configs_stor1 in delay0_remove0_e8_r0_size16_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size32_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size64_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size128_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size256_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size512_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_size1024_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64 delay0_remove0_e8_r0_sizeinf_gto48_pb0_pe0_ww0_c128_bw95_aw0_rw0_rp64
do

cp -r $template $mother_dir/$configs_stor1
cd $mother_dir/$configs_stor1
sh setup_ALL.sh $configs_stor1

done

