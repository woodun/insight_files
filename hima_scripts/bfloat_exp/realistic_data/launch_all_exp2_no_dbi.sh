#!/bin/sh

#####################################################
qsub pbs_exp2_AlexNet.pbs
qsub pbs_exp2_CifarNet.pbs
qsub pbs_exp2_GRU.pbs
qsub pbs_exp2_LSTM.pbs
qsub pbs_exp2_ResNet.pbs
qsub pbs_exp2_SqueezeNet.pbs