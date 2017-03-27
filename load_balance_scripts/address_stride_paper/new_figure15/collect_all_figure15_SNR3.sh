#!/bin/sh

cd /stor1/hwang07/SNR_collection

rm -r warp_partition2_osp_fig15
rm -r warp_partition2_tsp_fig15

mkdir warp_partition2_osp_fig15
mkdir warp_partition2_tsp_fig15

cd -

sh collect_all_configs_warp_partition2_osp_figure15_SNR.sh
sh collect_all_configs_warp_partition2_tsp_figure15_SNR.sh
