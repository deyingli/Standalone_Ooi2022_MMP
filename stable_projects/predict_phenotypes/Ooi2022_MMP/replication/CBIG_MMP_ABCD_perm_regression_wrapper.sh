#!/bin/sh
#####
# This function is the wrapper script for running all permutation null models for the ABCD in our paper.
#
# Written by Leon Ooi and CBIG under MIT license: https://github.com/ThomasYeoLab/CBIG/blob/master/LICENSE.md
#####

# find main directory
parentdir=$(dirname $(dirname "$(readlink -f "$0")"))
# create ouput folder: MODIFY THIS FOR DIFFERENT OUTPUT DIRECTORY
output_dir=/home/leon_ooi/storage/Multimodal_prediction_project/replication/ABCD
if [ ! -d $output_dir ]; then mkdir -p $output_dir; fi

### generate null models	
$parentdir/regression/ABCD/utilities/CBIG_MMP_ABCD_schedule_regression.sh stats $output_dir 
