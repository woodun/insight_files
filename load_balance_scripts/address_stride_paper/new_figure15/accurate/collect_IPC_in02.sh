#!/bin/sh

token='gpu_tot_ipc ='
sh collect_IPC_asap_tsp.sh $token final_asap_tsp_IPC.txt
sh collect_IPC_wp0_tsp.sh $token final_wp0_tsp_IPC.txt
sh collect_IPC_wp2_tsp.sh $token final_wp2_tsp_IPC.txt
sh collect_IPC_wp4_tsp.sh $token final_wp4_tsp_IPC.txt
sh collect_IPC_wp6_tsp.sh $token final_wp6_tsp_IPC.txt