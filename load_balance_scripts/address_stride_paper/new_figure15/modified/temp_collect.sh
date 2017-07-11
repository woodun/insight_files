#!/bin/sh

#sh collect_coverage_coverages_osp_in01.sh
#sh collect_coverage_coverages_tsp_in02.sh
#sh collect_coverage_rate_osp_in01.sh
#sh collect_coverage_rate_tsp_in02.sh
#sh collect_coverage_l1mr_osp_in01.sh
#sh collect_coverage_l1mr_tsp_in02.sh

sh collect_nolong_rate_in02.sh
sh collect_coverage_rate_osp_in01.sh
sh collect_sizes_in01.sh
sh collect_fig6_in02.sh
sh collect_baseline_IPC_in02.sh
sh collect_coverage_IPC_osp_in01.sh
sh collect_coverage_IPC_tsp_in02.sh