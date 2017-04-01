#!/bin/sh

token="gpu_tot_ipc ="
sh collect_IPC_asap_osp.sh $token "final_asap_osp_IPC.txt"
sh collect_IPC_wp0_osp.sh $token "final_wp0_osp_IPC.txt"
sh collect_IPC_wp2_osp.sh $token "final_wp2_osp_IPC.txt"
sh collect_IPC_wp4_osp.sh $token "final_wp4_osp_IPC.txt"
sh collect_IPC_wp6_osp.sh $token "final_wp6_osp_IPC.txt"