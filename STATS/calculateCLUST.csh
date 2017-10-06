#! /bin/csh


set visits = (visit1)


set stats_folder = ~/DATA/VIVA/STATS/Resultados_Preliminares/RMET

set subjs_list = subject_list.txt
set subjs = (`cat ${subjs_list}`)



set base_folder = ~/DATA/VIVA




cd $stats_folder

set results_folder = `pwd`



touch average.ACF.blur.PROC.RMET.1D

foreach subj ($subjs)
	foreach visit ($visits)
		cd $base_folder/$subj/$visit/PROC.RMET

		awk 'NR==4' blur.errts_newACF.1D >> $results_folder/average.ACF.blur.PROC.RMET.1D

	end
end



