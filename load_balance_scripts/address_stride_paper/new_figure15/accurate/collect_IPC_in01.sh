#!/bin/sh

#'gpu_tot_ipc =' 'average_avg_bias:' 'Stall:'

sh collect_IPC_asap_osp.sh 'Stall:' final_asap_osp_stalls.txt
sh collect_IPC_wp0_osp.sh 'Stall:' final_wp0_osp_stalls.txt
sh collect_IPC_wp2_osp.sh 'Stall:' final_wp2_osp_stalls.txt
sh collect_IPC_wp4_osp.sh 'Stall:' final_wp4_osp_stalls.txt
sh collect_IPC_wp6_osp.sh 'Stall:' final_wp6_osp_stalls.txt