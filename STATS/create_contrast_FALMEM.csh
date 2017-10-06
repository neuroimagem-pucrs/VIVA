#! /bin/csh


#set subject_list = (134 121 122 038 037 031 030 016 106 105 011 013 036 044 108 004 005 020 010 015)
set subject_list = ( 044 108 004 005 020 010 015)

set mask_dset = ~/DATA/AMBAC/STATS/ttest_OHBM/HaskinsPeds_NL_template_3x3x3+tlrc
set study = VIVA

cd ~/DATA/VIVA
set base_folder = `pwd`

foreach subj ($subject_list)

	cd $base_folder
	cd ${study}${subj}/visit1/PROC.FALMEM/por_resposta

	if ( ! -f stats.CFM-TM.${study}${subj}+tlrc.BRIK ) then

		3dcalc -fscale \
		-a stats.${study}${subj}+tlrc.HEAD'[7]' \
		-b stats.${study}${subj}+tlrc.HEAD'[1]' \
		-expr '(a-b)' \
		-prefix stats.CFM-TM.${study}${subj}
		echo "CRIADO PARA ${study}${subj}"

		gzip -1v stats.CFM-TM.${study}${subj}+tlrc.BRIK

	else

		echo "${study}${subj} JÁ TEM..."

	endif






	if ( ! -f stats.CFM-MEM_VERDADEIRAS.${study}${subj}+tlrc.BRIK ) then

		3dcalc -fscale \
		-a stats.${study}${subj}+tlrc.HEAD'[7]' \
		-b stats.MEM_VERDADEIRAS.${study}${subj}+tlrc.HEAD \
		-expr '(a-b)' \
		-prefix stats.CFM-MEM_VERDADEIRAS.${study}${subj}
		echo "CRIADO PARA ${study}${subj}"

		gzip -1v stats.CFM-MEM_VERDADEIRAS.${study}${subj}+tlrc.BRIK

	else

		echo "${study}${subj} JÁ TEM..."

	endif



end
