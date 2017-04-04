#!/bin/sh

#'gpu_tot_ipc =' 'average_avg_bias:' 'Stall:' 'predictor coverage0:' 'W0_Scoreboard:'

sh collect_HE_asap_osp.sh 'W0_Scoreboard:' last_asap_osp_W0.txt
sh collect_HE_wp0_osp.sh 'W0_Scoreboard:' last_wp0_osp_W0.txt
sh collect_HE_wp2_osp.sh 'W0_Scoreboard:' last_wp2_osp_W0.txt
sh collect_HE_wp4_osp.sh 'W0_Scoreboard:' last_wp4_osp_W0.txt
sh collect_HE_wp6_osp.sh 'W0_Scoreboard:' last_wp6_osp_W0.txt