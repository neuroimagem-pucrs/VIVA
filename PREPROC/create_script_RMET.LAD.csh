#! /bin/csh


# This is the script to create preprocessing scripts for the 
# frases nonsense paradigm

set study = VIVA
#set subj = $1
set subjs = (108)
set run = RMET
set visit = visit1

set script_folder = `pwd`

#set template = /media/DATA/IDEAL_BRAINS/nihpd_sym_07.5-13.5_t1w+tlrc
set template = ~/DATA/VIVA/SCRIPTS/VIVA/PREPROC/HaskinsPeds_NL_template1.0+tlrc

foreach subj ($subjs)

cd ../../../
cd VIVA${subj}/${visit}


afni_proc.py \
	-subj_id ${study}${subj}                        \
	-script proc.${study}${subj}.${run}.tcsh 	\
	-out_dir PROC.${run} 				\
	-dsets ${run}1/${study}${subj}.${run}1.nii.gz	\
		   ${run}2/${study}${subj}.${run}2.nii.gz	\
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
		-giant_move				\
	-tlrc_base ${template}				\
        -mask_segment_anat yes				\
	-blur_filter -1blur_fwhm			\
	-blur_size 6 					\
    	-regress_stim_times \
    ${script_folder}/timing_rmet/timing_RMAT_estimulo_emocao.1D  \
	${script_folder}/timing_rmet/timing_RMAT_estimulo_sexo.1D                        \
	${script_folder}/timing_rmet/timing_RMAT_decisao_emocao.1D                       \
	${script_folder}/timing_rmet/timing_RMAT_decisao_sexo.1D  	                     \
	${script_folder}/timing_rmet/timing_RMAT_base.1D  	                             \
	-regress_stim_labels ee es de ds base                      \
	-regress_basis_multi                                                 \
	'BLOCK(6,1)' 'BLOCK(6,1)' 'BLOCK(3,1)' 'BLOCK(3,1)' 'BLOCK(30,1)'    \
	-regress_local_times 			\
	-regress_opts_3dD                               \
		-gltsym 'SYM: +ee -base'               \
 		-glt_label 1 ee_vs_base                \
		-gltsym 'SYM: +es -base'               \
 		-glt_label 2 es_vs_base                \
		-gltsym 'SYM: +de -base'               \
 		-glt_label 3 de_vs_base                \
		-gltsym 'SYM: +ds -base'               \
 		-glt_label 4 ds_vs_base                \
		-gltsym 'SYM: +ee -es'               \
 		-glt_label 5 ee_vs_es                \
		-gltsym 'SYM: +de -ds'               \
 		-glt_label 6 de_vs_ds               \
		-jobs 6					\
        -regress_est_blur_epits				\
        -regress_est_blur_errts				\
	-regress_censor_motion 0.9                      \
	-regress_censor_outliers 0.1                    \
	-regress_apply_mot_types demean			\
	-regress_run_clustsim yes \
	-execute
	
	cd PROC.${run}
	gzip -v *BRIK

end
exit





