#!/bin/csh

##########################################################################################################################
## SCRIPT TO EXTRACT THE TIME-SERIES OF A BRAIN REGION
##
##
## Written by Nathalia Bianchini Esper
##
##########################################################################################################################


set subject_list = ( VIVA105 VIVA106 VIVA122 VIVA134 VIVA011 VIVA016 VIVA030 VIVA038 VIVA035 VIVA121 VIVA036 VIVA044 VIVA108 VIVA004 VIVA005 VIVA020 VIVA010 VIVA015 VIVA014 )
set visit = visit1


set seed_loc = ~/DATA/VIVA/STATS/Resultados_Preliminares/CHANGE
set ddir = ~/DATA/VIVA/

##########################################################################################################################
##---START OF SCRIPT----------------------------------------------------------------------------------------------------##
##########################################################################################################################



## Get subjects to run
foreach subj ($subject_list)

  ## directory setup
  set func_dir = ${ddir}/${subj}/${visit}/PROC.CHANGE
  # set reg_dir = ${ddir}/${study}${subj}/REG2
  ## seed_timeseries
  set seed_ts_dir = ${ddir}/${subj}/${visit}/PROC.CHANGE/seed_ts
  ## RSFC maps
  set RSFC_dir = ${ddir}/${subj}/${visit}/PROC.CHANGE/RSFC

  echo --------------------------
  echo running subject ${subj}
  echo --------------------------

  mkdir -p ${seed_ts_dir}
  mkdir -p ${RSFC_dir}


  foreach seed ( `count -digits 1 1 107` )

    set seed_file = ${seed_loc}/ROI_${seed}.nii.gz

    echo -------------------------
    echo running seed ${seed}
    echo -------------------------

    ## 1. Extract Timeseries
    echo Extracting timeseries seed ${seed}
    3dROIstats -quiet -mask_f2short -mask ${seed_file} ${func_dir}/stats.${subj}+tlrc > ${seed_ts_dir}/${seed}.1D


    ## 2. Compute voxel-wise correlation with Seed Timeseries
    echo Computing Correlation seed ${seed}

	3dTcorr1D -pearson -prefix ${RSFC_dir}/${seed}_corr ${func_dir}/stats.${subj}+tlrc ${seed_ts_dir}/${seed}.1D


    ## 3. Z-transform correlations
    echo Z-transforming correlations seed ${seed}
    3dcalc -a ${RSFC_dir}/${seed}_corr+tlrc -expr 'log((a+1)/(a-1))/2' -prefix ${RSFC_dir}/${seed}_Z


  ## END OF SEED LOOP
  end

## END OF SUBJECT LOOP
end



