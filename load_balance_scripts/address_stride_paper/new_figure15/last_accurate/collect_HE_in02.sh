#!/bin/sh

#'gpu_tot_ipc =' 'average_avg_bias:' 'Stall:' 'predictor coverage0:' 'W0_Scoreboard:'

sh collect_HE_asap_tsp.sh 'W0_Scoreboard:' last_asap_tsp_W0.txt
sh collect_HE_wp0_tsp.sh 'W0_Scoreboard:' last_wp0_tsp_W0.txt
sh collect_HE_wp2_tsp.sh 'W0_Scoreboard:' last_wp2_tsp_W0.txt
sh collect_HE_wp4_tsp.sh 'W0_Scoreboard:' last_wp4_tsp_W0.txt
sh collect_HE_wp6_tsp.sh 'W0_Scoreboard:' last_wp6_tsp_W0.txt