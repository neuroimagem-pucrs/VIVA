#! /bin/tcsh


set STATS_FOLDER = ~/DATA/VIVA/STATS/Resultados_Preliminares/RMET

set subjs_list = subject_list.txt
set subjs = (`cat ${subjs_list}`)
#set subjs = (VIVA023 VIVA027 VIVA043)
set visits = (visit1)



set base_folder = ~/DATA/VIVA


foreach subj ($subjs)
	foreach visit ($visits)

		cd $base_folder
		cd $subj
		cd $visit

		cd PROC.RMET

		set runs = 01

		# -- estimate blur for each run in errts --
	#	touch blur.errts.NEW.1D

		# restrict to uncensored TRs, per run
		foreach run ( $runs )
		    set trs = `1d_tool.py -infile X.xmat.1D -show_trs_uncensored encoded \
		                          -show_trs_run $run`
		    mkdir files_ACF
  			if ( $trs == "" ) continue
  			  	3dFWHMx -detrend -mask full_mask.$subj+tlrc                          \
            		-ACF files_ACF/out.3dFWHMx.ACF.errts.r$run.1D                \
            		errts.${subj}+tlrc"[$trs]" >> blur.errts_newACF.1D
			end


			# compute average FWHM blur (from every other row) and append
#			set blurs = ( `3dTstat -mean -prefix - blur.errts.1D'{0..$(2)}'\'` )
#			echo average errts FWHM blurs: $blurs
#			echo "$blurs   # errts FWHM blur estimates" >> blur_est.$subj.1D

			# compute average ACF blur (from every other row) and append
#			set blurs = ( `3dTstat -mean -prefix - blur.errts.1D'{1..$(2)}'\'` )
#			echo average errts ACF blurs: $blurs
#			echo "$blurs   # errts ACF blur estimates" >> blur_est.$subj.1D

			# get only the ACF
#			echo "$blurs   # errts ACF blur estimates" >> blur_est.ACF.$subj.1D

	    end

	#	3dFWHMx  -mask mask_group+tlrc.HEAD -acf acf.${subj}.${visit}.${task}.1D -input errts.${subj}+tlrc.HEAD

	end
end



endif







