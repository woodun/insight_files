#!/bin/sh

#'gpu_tot_ipc =' 'average_avg_bias:' 'Stall:' 'predictor coverage0:'

sh collect_IPC_asap_osp.sh 'average_avg_bias:' schedulers_asap_osp_HE.txt
sh collect_IPC_wp0_osp.sh 'average_avg_bias:' schedulers_wp0_osp_HE.txt
sh collect_IPC_wp2_osp.sh 'average_avg_bias:' schedulers_wp2_osp_HE.txt
#sh collect_IPC_wp4_osp.sh 'average_avg_bias:' schedulers_wp4_osp_HE.txt
sh collect_IPC_wp6_osp.sh 'average_avg_bias:' schedulers_wp6_osp_HE.txt