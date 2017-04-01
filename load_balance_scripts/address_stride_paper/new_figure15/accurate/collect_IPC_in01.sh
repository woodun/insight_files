#!/bin/sh

sh collect_IPC_asap_osp.sh 'gpu_tot_ipc =' final_asap_osp_IPC.txt
sh collect_IPC_wp0_osp.sh 'gpu_tot_ipc =' final_wp0_osp_IPC.txt
sh collect_IPC_wp2_osp.sh 'gpu_tot_ipc =' final_wp2_osp_IPC.txt
sh collect_IPC_wp4_osp.sh 'gpu_tot_ipc =' final_wp4_osp_IPC.txt
sh collect_IPC_wp6_osp.sh 'gpu_tot_ipc =' final_wp6_osp_IPC.txt