#!/bin/sh

########################################

for i in /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage10_gto48_wattch1/polybench/GESUMMV /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage10_gto48_wattch1/polybench/SYR2K /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage10_gto48_wattch1/polybench/SYRK /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage10_gto48_wattch1/polybench/2DCONV_EMBOSS /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage10_gto48_wattch1/polybench/2DCONV_BLUR /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage10_gto48_wattch1/polybench/3DCONV /stor1/hwang07/rebuttal_tsp/coverage15_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/GESUMMV /stor1/hwang07/rebuttal_tsp/coverage15_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/SYR2K /stor1/hwang07/rebuttal_tsp/coverage15_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/SYRK /stor1/hwang07/rebuttal_tsp/coverage15_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/2DCONV_EMBOSS /stor1/hwang07/rebuttal_tsp/coverage15_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/2DCONV_BLUR /stor1/hwang07/rebuttal_tsp/coverage15_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/3DCONV /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage15_gto48_wattch1/polybench/GESUMMV /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage15_gto48_wattch1/polybench/SYR2K /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage15_gto48_wattch1/polybench/SYRK /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage15_gto48_wattch1/polybench/2DCONV_EMBOSS /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage15_gto48_wattch1/polybench/2DCONV_BLUR /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage15_gto48_wattch1/polybench/3DCONV /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage15_gto48_wattch1/polybench/GESUMMV /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage15_gto48_wattch1/polybench/SYR2K /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage15_gto48_wattch1/polybench/SYRK
do

cd $i


qsub appbase_in01.pbs


cd ..

done




for i in /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage15_gto48_wattch1/polybench/2DCONV_EMBOSS /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage15_gto48_wattch1/polybench/2DCONV_BLUR /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage15_gto48_wattch1/polybench/3DCONV /stor1/hwang07/rebuttal_tsp/coverage20_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/GESUMMV /stor1/hwang07/rebuttal_tsp/coverage20_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/SYR2K /stor1/hwang07/rebuttal_tsp/coverage20_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/SYRK /stor1/hwang07/rebuttal_tsp/coverage20_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/2DCONV_EMBOSS /stor1/hwang07/rebuttal_tsp/coverage20_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/2DCONV_BLUR /stor1/hwang07/rebuttal_tsp/coverage20_dynamic_tsp_nopc_size8_gto48_wattch1/polybench/3DCONV /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage20_gto48_wattch1/polybench/GESUMMV /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage20_gto48_wattch1/polybench/SYR2K /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage20_gto48_wattch1/polybench/SYRK /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage20_gto48_wattch1/polybench/2DCONV_EMBOSS /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage20_gto48_wattch1/polybench/2DCONV_BLUR /stor1/hwang07/rebuttal_tsp/wp0_tsp_coverage20_gto48_wattch1/polybench/3DCONV /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage20_gto48_wattch1/polybench/GESUMMV /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage20_gto48_wattch1/polybench/SYR2K /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage20_gto48_wattch1/polybench/SYRK /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage20_gto48_wattch1/polybench/2DCONV_EMBOSS /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage20_gto48_wattch1/polybench/2DCONV_BLUR /stor1/hwang07/rebuttal_tsp/wp6_tsp_coverage20_gto48_wattch1/polybench/3DCONV
do

cd $i


qsub appbase_in02.pbs


cd ..

done
