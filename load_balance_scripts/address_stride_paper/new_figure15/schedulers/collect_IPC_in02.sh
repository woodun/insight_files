#!/bin/sh

#'gpu_tot_ipc =' 'average_avg_bias:' 'Stall:'

sh collect_IPC_asap_tsp.sh 'predictable lines:' final_asap_tsp_Misses.txt
sh collect_IPC_wp0_tsp.sh 'predictable lines:' final_wp0_tsp_Misses.txt
sh collect_IPC_wp2_tsp.sh 'predictable lines:' final_wp2_tsp_Misses.txt
sh collect_IPC_wp4_tsp.sh 'predictable lines:' final_wp4_tsp_Misses.txt
sh collect_IPC_wp6_tsp.sh 'predictable lines:' final_wp6_tsp_Misses.txt