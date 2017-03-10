#! /bin/csh


# This is the script to create preprocessing scripts for the 
# frases nonsense paradigm

set study = VIVA
set subj = $1
set run = CHANGE
set visit = visit1

set script_folder = `pwd`

#set template = /media/DATA/IDEAL_BRAINS/nihpd_sym_07.5-13.5_t1w+tlrc
set template = ~/HaskinsPeds_NL_template1.0+tlrc

cd ../../../
cd VIVA${subj}/${visit}


afni_proc.py \
	-subj_id ${study}${subj}                        \
	-script proc.${study}${subj}.${run}.tcsh 	\
	-out_dir PROC.${run} 				\
	-dsets ${run}/${study}${subj}.${run}.nii.gz	\
	-copy_anat ANAT/${study}${subj}.ANAT.nii.gz	\
 	-do_block despike align tlrc  			\
	-tcat_remove_first_trs 3                        \
	-tshift_opts_ts -tpattern alt+z			\
	-volreg_align_to first				\
	-volreg_align_e2a				\
	-volreg_tlrc_warp				\
	-align_opts_aea -skullstrip_opts 		\
		-shrink_fac_bot_lim 0.8 		\
		-no_pushout				\
	-tlrc_base ${template}				\
        -mask_segment_anat yes				\
	-blur_filter -1blur_fwhm			\
	-blur_size 6 					\
    	-regress_stim_times \
    	${script_folder}/timing_change/timing_GO.1D  \
	${script_folder}/timing_change/timing_CHANGE.1D                        \
	-regress_stim_labels go change                      \
	-regress_basis_multi                                                 \
		'BLOCK(1,1)' 'BLOCK(1,1)'    \
	-regress_local_times 			\
	-regress_opts_3dD                               \
		-gltsym 'SYM: +go -change'               \
 		-glt_label 1 go_vs_change                \
		-jobs 1					\
        -regress_est_blur_epits				\
        -regress_est_blur_errts				\
	-regress_censor_motion 0.9                      \
	-regress_censor_outliers 0.1                    \
	-regress_apply_mot_types demean			\
	-regress_run_clustsim yes \
	-execute
	
	cd PROC.${run}
	gzip -v *BRIK

exit





