#! /bin/csh


#set subject_list = (134 121 122 038 037 031 030 016 106 105 011 013 036 044 108 004 005 020 010 015)
set subject_list = (044 108 004 005 020 010 015)

set mask_dset = ~/DATA/AMBAC/STATS/ttest_OHBM/HaskinsPeds_NL_template_3x3x3+tlrc
set study = VIVA

cd ~/DATA/VIVA
set base_folder = `pwd`

foreach subj ($subject_list)

	cd $base_folder
	cd ${study}${subj}/visit1/PROC.FALMEM/por_resposta

	if ( ! -f stats.MEM_FALSAS.${study}${subj}+tlrc.BRIK ) then

		3dcalc -fscale \
		-a stats.${study}${subj}+tlrc.HEAD'[10]' \
		-b stats.${study}${subj}+tlrc.HEAD'[13]' \
		-c stats.${study}${subj}+tlrc.HEAD'[7]' \
		-expr '(a+b+c)/3' \
		-prefix stats.MEM_FALSAS.${study}${subj}
		echo "CRIADO PARA ${study}${subj}"

		gzip -1v stats.MEM_FALSAS.${study}${subj}+tlrc.BRIK

	else

		echo "${study}${subj} JÁ TEM..."

	endif






	if ( ! -f stats.MEM_VERDADEIRAS.${study}${subj}+tlrc.BRIK ) then

		3dcalc -fscale \
		-a stats.${study}${subj}+tlrc.HEAD'[1]' \
		-b stats.${study}${subj}+tlrc.HEAD'[4]' \
		-expr '(a+b)/2' \
		-prefix stats.MEM_VERDADEIRAS.${study}${subj}
		echo "CRIADO PARA ${study}${subj}"

		gzip -1v stats.MEM_VERDADEIRAS.${study}${subj}+tlrc.BRIK

	else

		echo "${study}${subj} JÁ TEM..."

	endif




	if ( ! -f stats.MEM_VERDADEIRAS-FALSAS.${study}${subj}+tlrc.BRIK ) then

		3dcalc -fscale \
		-a stats.MEM_VERDADEIRAS.${study}${subj}+tlrc.HEAD \
		-b stats.MEM_FALSAS.${study}${subj}+tlrc.HEAD \
		-expr '(a+b)/2' \
		-prefix stats.MEM_VERDADEIRAS-FALSAS.${study}${subj}
		echo "CRIADO PARA ${study}${subj}"

		gzip -1v stats.MEM_VERDADEIRAS-FALSAS.${study}${subj}+tlrc.BRIK

	else

		echo "${study}${subj} JÁ TEM..."

	endif










end
