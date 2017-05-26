#! /bin/csh


set subject_list = (105 106 114 122 123 134 011 016 030 037 038 035 121)
set mask_dset = ~/DATA/AMBAC/STATS/ttest_OHBM/HaskinsPeds_NL_template_3x3x3+tlrc
set study = VIVA

cd ~/DATA/VIVA
set base_folder = `pwd`

foreach subj ($subject_list)

	cd $base_folder
	cd ${study}${subj}/visit1/PROC.CHANGE/

	if ( ! -f stats.CHANGE_vs_GO.${study}${subj}+tlrc.BRIK ) then

		3dcalc -fscale \
		-a stats.${study}${subj}+tlrc.HEAD'[1]' \
		-b stats.${study}${subj}+tlrc.HEAD'[4]' \
		-c stats.${study}${subj}+tlrc.HEAD'[7]' \
		-expr '(a+b+c)/3' \
		-prefix stats.CHANGE_vs_GO.${study}${subj}
		echo "CRIADO PARA ${study}${subj}"

		gzip -1v stats.CHANGE_vs_GO.${study}${subj}+tlrc.BRIK

	else

		echo "${study}${subj} JÁ TEM..."

	endif


end
