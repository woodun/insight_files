#!/bin/sh

#####################################################
qsub pbs_exp2_dbi_AlexNet.pbs
qsub pbs_exp2_dbi_CifarNet.pbs
qsub pbs_exp2_dbi_GRU.pbs
qsub pbs_exp2_dbi_LSTM.pbs
qsub pbs_exp2_dbi_ResNet.pbs
qsub pbs_exp2_dbi_SqueezeNet.pbs

