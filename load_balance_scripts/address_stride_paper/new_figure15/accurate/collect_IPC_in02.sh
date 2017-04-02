#!/bin/sh

#'gpu_tot_ipc =' 'average_avg_bias:' 'Stall:' 'predictor coverage0:'

sh collect_IPC_asap_tsp.sh 'Stall:' final_asap_tsp_stalls.txt
sh collect_IPC_wp0_tsp.sh 'Stall:' final_wp0_tsp_stalls.txt
sh collect_IPC_wp2_tsp.sh 'Stall:' final_wp2_tsp_stalls.txt
sh collect_IPC_wp4_tsp.sh 'Stall:' final_wp4_tsp_stalls.txt
sh collect_IPC_wp6_tsp.sh 'Stall:' final_wp6_tsp_stalls.txt