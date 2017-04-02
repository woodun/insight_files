#!/bin/sh

#'gpu_tot_ipc =' 'average_avg_bias:' 'Stall:' 'predictor coverage0:'

sh collect_IPC_asap_osp.sh 'predictable lines:' final_asap_osp_Misses.txt
sh collect_IPC_wp0_osp.sh 'predictable lines:' final_wp0_osp_Misses.txt
sh collect_IPC_wp2_osp.sh 'predictable lines:' final_wp2_osp_Misses.txt
sh collect_IPC_wp4_osp.sh 'predictable lines:' final_wp4_osp_Misses.txt
sh collect_IPC_wp6_osp.sh 'predictable lines:' final_wp6_osp_Misses.txt