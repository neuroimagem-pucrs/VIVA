#! /bin/csh

##########################################################################################################################
## SCRIPT TO CALCULATE SEED-BASED RESTING-STATE FUNCTIONAL CONNECTIVITY
##
## This script can be run on its own, by filling in the appropriate parameters
## Alternatively this script gets called from batch_process.sh, where you can use it to run N sites, one after the other.
##
## Written by Clare Kelly, Maarten Mennes & Michael Milham
## for more information see www.nitrc.org/projects/fcon_1000
##
##########################################################################################################################

set study = VIVA
set visit = visit1

set subject_list = subject_list.txt
set subject_list = (`cat $subject_list`)

## file containing list with full/path/to/seed.nii.gz

set seed_list = (LHipp RHipp)

set seed_loc = ~/DATA/VIVA/SCRIPTS/VIVA/STATS/ROIS_RST/SEEDS_GERADAS

## directory setup
## see below

## analysisdirectory
cd ~/DATA/VIVA
set ddir = `pwd`

##########################################################################################################################
##---START OF SCRIPT----------------------------------------------------------------------------------------------------##
##########################################################################################################################

## Get subjects to run
foreach subj ($subject_list)

  ## directory setup
  set func_dir = ${ddir}/${study}${subj}/${visit}/PROC.RST.NL
  ## seed_timeseries
  set seed_ts_dir = ${ddir}/${study}${subj}/${visit}/PROC.RST.NL/seed_ts
  ## RSFC maps
  set RSFC_dir = ${ddir}/${study}${subj}/${visit}/PROC.RST.NL/RSFC

#echo ${seed_ts_dir}

  echo --------------------------
  echo running subject ${study}${subj}
  echo --------------------------

  mkdir -p ${seed_ts_dir}
  mkdir -p ${RSFC_dir}


  ## Get seeds to runROI.CSFe_rall.1D

  foreach seed ( $seed_list )

    set seed_file = ${seed_loc}/ROI_${seed}+tlrc
    echo -------------------------
    echo running seed ${seed}
    echo -------------------------

    ## 1. Extract Timeseries
    echo Extracting timeseries seed ${seed}
    3dROIstats -quiet -mask_f2short -mask ${seed_file} ${func_dir}/errts.${study}${subj}.anaticor+tlrc > ${seed_ts_dir}/${seed}.1D


    ## 2. Compute voxel-wise correlation with Seed Timeseries
    echo Computing Correlation seed ${seed}

    3dTcorr1D -pearson -prefix ${RSFC_dir}/${seed}_corr ${func_dir}/errts.${study}${subj}.anaticor+tlrc \
       ${seed_ts_dir}/${seed}.1D


    ## 3. Z-transform correlations
    echo Z-transforming correlations seed ${seed}
    3dcalc -a ${RSFC_dir}/${seed}_corr+tlrc -expr 'log((a+1)/(a-1))/2' -prefix ${RSFC_dir}/${seed}_Z

#    cd ${RSFC_dir}
#    3dcopy ${seed}_Z.nii.gz ${seed}_Z_float


  ## END OF SEED LOOP
  end

## END OF SUBJECT LOOP
end
