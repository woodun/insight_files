#!/bin/sh

#'gpu_tot_ipc =' 'average_avg_bias:' 'Stall:' 'predictor coverage0:'

sh collect_IPC_asap_tsp.sh 'average_avg_bias:' schedulers_asap_tsp_HE.txt
sh collect_IPC_wp0_tsp.sh 'average_avg_bias:' schedulers_wp0_tsp_HE.txt
sh collect_IPC_wp2_tsp.sh 'average_avg_bias:' schedulers_wp2_tsp_HE.txt
#sh collect_IPC_wp4_tsp.sh 'average_avg_bias:' schedulers_wp4_tsp_HE.txt
sh collect_IPC_wp6_tsp.sh 'average_avg_bias:' schedulers_wp6_tsp_HE.txt