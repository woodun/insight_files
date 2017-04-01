#!/bin/sh

sh collect_IPC_asap_tsp.sh 'gpu_tot_ipc =' final_asap_tsp_IPC.txt
sh collect_IPC_wp0_tsp.sh 'gpu_tot_ipc =' final_wp0_tsp_IPC.txt
sh collect_IPC_wp2_tsp.sh 'gpu_tot_ipc =' final_wp2_tsp_IPC.txt
sh collect_IPC_wp4_tsp.sh 'gpu_tot_ipc =' final_wp4_tsp_IPC.txt
sh collect_IPC_wp6_tsp.sh 'gpu_tot_ipc =' final_wp6_tsp_IPC.txt