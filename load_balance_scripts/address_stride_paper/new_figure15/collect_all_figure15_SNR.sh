#!/bin/sh

cd /stor1/hwang07/SNR_collection

rm -r coverage50_dynamic1
#rm -r coverage25_dynamic2
rm -r coverage75_dynamic3

rm -r coverage50_dynamic_nopc1
#rm -r coverage25_dynamic_nopc2
rm -r coverage75_dynamic_nopc3

mkdir coverage50_dynamic1
#mkdir coverage25_dynamic2
mkdir coverage75_dynamic3

mkdir coverage50_dynamic_nopc1
#mkdir coverage25_dynamic_nopc2
mkdir coverage75_dynamic_nopc3

cd -

sh collect_all_configs_coverage_dynamic1_SNR.sh
#sh collect_all_configs_coverage_dynamic2_SNR.sh
sh collect_all_configs_coverage_dynamic3_SNR.sh

sh collect_all_configs_coverage_dynamic_nopc1_SNR.sh
#sh collect_all_configs_coverage_dynamic_nopc2_SNR.sh
sh collect_all_configs_coverage_dynamic_nopc3_SNR.sh
