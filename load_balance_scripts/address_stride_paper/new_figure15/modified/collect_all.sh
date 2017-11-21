#!/bin/sh

#energy
sh rebuttal/collect_baseline_power_in01.sh
sh rebuttal/collect_baseline_cycles_in01.sh
sh rebuttal/collect_coverage_power_tsp_in01.sh
sh rebuttal/collect_coverage_cycles_tsp_in01.sh

#IPC & l1 Miss Reduction & HE
sh collect_baseline_others_in02.sh
sh collect_coverage_others_tsp_in02.sh
sh collect_coverage_others_osp_in01.sh

#RE
sh calculate_SRE_collect_osp_in01.sh
sh calculate_SRE_collect_tsp_in02.sh

#MMR gto vs RR
sh collect_coverage_rate_osp_in01.sh

#MMR nolong
sh collect_nolong_rate_in02.sh

#size1 to size10
sh collect_sizes_in01.sh

#motivation
sh collect_fig6_in02.sh