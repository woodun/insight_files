#!/bin/bash

    if [ "$1" = 1 ]; then
        machine=in01
    else
        machine=in02
    fi

for benchmark in spmv cutcp histo mm sad lbm tpacf
do
	cat script_base_parboil.pbs | sed -e "s/mm/$benchmark/g" | sed -e "s/compute/$machine/g" > parboil/$benchmark/pbs_$benchmark.pbs
done