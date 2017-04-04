#!/bin/sh

#'gpu_tot_ipc =' 'average_avg_bias:' 'Stall:' 'predictor coverage0:' 'W0_Scoreboard:'

sh collect_IPC_asap_osp.sh 'W0_Scoreboard:' final_asap_osp_W0.txt
sh collect_IPC_wp0_osp.sh 'W0_Scoreboard:' final_wp0_osp_W0.txt
sh collect_IPC_wp2_osp.sh 'W0_Scoreboard:' final_wp2_osp_W0.txt
sh collect_IPC_wp4_osp.sh 'W0_Scoreboard:' final_wp4_osp_W0.txt
sh collect_IPC_wp6_osp.sh 'W0_Scoreboard:' final_wp6_osp_W0.txt