#!/bin/sh

token='gpu_tot_ipc ='
sh collect_IPC_asap_tsp.sh $token
sh collect_IPC_wp0_tsp.sh $token
sh collect_IPC_wp2_tsp.sh $token
sh collect_IPC_wp4_tsp.sh $token
sh collect_IPC_wp6_tsp.sh $token