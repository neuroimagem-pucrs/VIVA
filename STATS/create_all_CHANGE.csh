#! /bin/csh

set study = VIVA
set subjs = (002 004 005 010 011 013 014 015 016 020 023 027 030 031 035 036 037 038 043 044 105 106 108 114 121 122 134 206 207)

cd ../../../


set base_folder = `pwd`

foreach subj ($subjs)

	cd $base_folder
	cd ${study}${subj}/visit1/PROC.CHANGE/

	3dcalc -fscale 					\
	-a stats.${study}${subj}+tlrc.HEAD'[1]' 	\
	-b stats.${study}${subj}+tlrc.HEAD'[4]' 	\
	-c stats.${study}${subj}+tlrc.HEAD'[7]' 	\
	-expr '(a+b+c)/3' 				\
	-prefix stats.ALLcoef.${study}${subj}

end

# 1 - goX
# 4 - go0
# 7 - change

