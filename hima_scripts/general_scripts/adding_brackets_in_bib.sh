#!/bin/bash

cat approx.bib | sed -e "s/[^k]title={\([^{}]*\)}/title={{\1}}/g"  > new_approx.bib
cat gpu.bib | sed -e "s/[^k]title={\([^{}]*\)}/title={{\1}}/g"  > new_gpu.bib
