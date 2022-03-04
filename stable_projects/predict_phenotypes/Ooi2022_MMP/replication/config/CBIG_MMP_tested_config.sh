#! /bin/sh
# Last successfully run on July 13, 2021 with git repository version v0.20.0-Kong2022_ArealMSHBM
# Written by Jianzhong Chen and CBIG under MIT license: https://github.com/ThomasYeoLab/CBIG/blob/master/LICENSE.md

# DO NOT CHANGE: This clears old freesurfer variables if they previously exists
if [ -n "$FREESURFER_HOME" ]; then
	$FREESURFER_HOME/bin/clear_fs_env.csh 
fi

# PLEASE CHANGE: Please specify location of CBIG repository
export CBIG_CODE_DIR=$HOME/storage/CBIG_private

# PLEASE CHANGE: define locations for these libraries
export FREESURFER_HOME=/apps/freesurfer/5.3.0
export CBIG_MATLAB_DIR=/apps/matlab/R2018b
export CBIG_SPM_DIR=/apps/spm/spm12
export CBIG_AFNI_DIR=/apps/afni/AFNI_2011_12_21_1014/linux_openmp_64
export CBIG_ANTS_DIR=/apps/ants/ants_v2.2.0/BUILD/bin/
export CBIG_WB_DIR=/apps/HCP/workbench-1.1.1/
export CBIG_FSLDIR=/apps/fsl/5.0.10

# DO NOT CHANGE: define locations for unit tests data and replication data
export CBIG_TESTDATA_DIR=/mnt/isilon/CSC1/Yeolab/CodeMaintenance/UnitTestData
export CBIG_REPDATA_DIR=/mnt/isilon/CSC1/Yeolab/CodeMaintenance/ReplicationData
export CBIG_HCP_REPDATA_DIR=$CBIG_REPDATA_DIR/stable_projects/predict_phenotypes/Ooi2022_MMP/MMP_HCP_data
export CBIG_ABCD_REPDATA_DIR=$CBIG_REPDATA_DIR/stable_projects/predict_phenotypes/Ooi2022_MMP/MMP_ABCD_data

# DO NOT CHANGE: define scheduler location
export CBIG_SCHEDULER_DIR=/opt/pbs/bin

# DO NOT CHANGE: set up your environment with the configurations above
SETUP_PATH=$CBIG_CODE_DIR/setup/CBIG_generic_setup.sh
source $SETUP_PATH

# DO NOT CHANGE: set up temporary directory for MRIread from FS6.0 for CBIG 
# members using the HPC, Other users should comment this out
export TMPDIR=/tmp

# Do NOT CHANGE: set up MATLABPATH so that MATLAB can find startup.m in our repo 
export MATLABPATH=$CBIG_CODE_DIR/setup

# specified the default Python environment.
# Please UNCOMMENT if you follow CBIG's set up for Python environments.
# We use Python version 3.5 as default.
# Please see $CBIG_CODE_DIR/setup/python_env_setup/README.md for more details.
# source activate CBIG_py3