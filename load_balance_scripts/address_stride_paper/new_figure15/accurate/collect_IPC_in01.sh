#!/bin/sh

token='gpu_tot_ipc ='
sh collect_IPC_asap_osp.sh $token
sh collect_IPC_wp0_osp.sh $token
sh collect_IPC_wp2_osp.sh $token
sh collect_IPC_wp4_osp.sh $token
sh collect_IPC_wp6_osp.sh $token