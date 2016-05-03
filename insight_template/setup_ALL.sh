#!/bin/sh
sh setup_CUDA.sh $1 $2
sh setup_rodinia.sh $1 $2
sh setup_parboil.sh $1 $2
sh setup_mars.sh $1 $2
sh setup_shoc.sh $1 $2
sh setup_lonestar.sh $1 $2
