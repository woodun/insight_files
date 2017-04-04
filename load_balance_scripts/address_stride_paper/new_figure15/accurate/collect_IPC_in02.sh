#!/bin/sh

#'gpu_tot_ipc =' 'average_avg_bias:' 'Stall:' 'predictor coverage0:' 'W0_Scoreboard:'

sh collect_IPC_asap_tsp.sh 'W0_Scoreboard:' final_asap_tsp_W0.txt
sh collect_IPC_wp0_tsp.sh 'W0_Scoreboard:' final_wp0_tsp_W0.txt
sh collect_IPC_wp2_tsp.sh 'W0_Scoreboard:' final_wp2_tsp_W0.txt
sh collect_IPC_wp4_tsp.sh 'W0_Scoreboard:' final_wp4_tsp_W0.txt
sh collect_IPC_wp6_tsp.sh 'W0_Scoreboard:' final_wp6_tsp_W0.txt