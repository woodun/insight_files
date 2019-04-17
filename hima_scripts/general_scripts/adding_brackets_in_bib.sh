#!/bin/bash

cat approx.bib | sed -e "s/\([^k]title\s*=\s*\){\([^{}]*\)}/\1{{\2}}/g"  > new_approx.bib
cat gpu.bib | sed -e "s/\([^k]title\s*=\s*\){\([^{}]*\)}/\1{{\2}}/g"  > new_gpu.bib
