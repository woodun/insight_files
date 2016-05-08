#!/bin/bash

#7apps

for benchmark in cutcp histo mm sad spmv lbm tpacf
do
	cat script_base_parboil.pbs | sed -e "s/mm/$benchmark/g" | sed -e "s/compute/$machine/g" > parboil/$benchmark/pbs_$benchmark.pbs
done