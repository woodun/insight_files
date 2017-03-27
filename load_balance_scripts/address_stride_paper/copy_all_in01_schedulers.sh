#!/bin/sh

cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/dynamic_noold_nopc_S/dynamic_noold_nopc_size8_lrr48
cd /stor1/hwang07/dynamic_noold_nopc_S/dynamic_noold_nopc_size8_lrr48
sh setup_ALL.sh dynamic_noold_nopc_size8_lrr48

cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/dynamic_noold_nopc_S/dynamic_noold_nopc_size8_RR48
cd /stor1/hwang07/dynamic_noold_nopc_S/dynamic_noold_nopc_size8_RR48
sh setup_ALL.sh dynamic_noold_nopc_size8_RR48

cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/dynamic_tsp_nopc_S/dynamic_tsp_nopc_lrr48
cd /stor1/hwang07/dynamic_tsp_nopc_S/dynamic_tsp_nopc_lrr48
sh setup_ALL.sh dynamic_tsp_nopc_lrr48

cp -r /stor1/hwang07/insight_files/insight_template /stor1/hwang07/dynamic_tsp_nopc_S/dynamic_tsp_nopc_RR48
cd /stor1/hwang07/dynamic_tsp_nopc_S/dynamic_tsp_nopc_RR48
sh setup_ALL.sh dynamic_tsp_nopc_RR48