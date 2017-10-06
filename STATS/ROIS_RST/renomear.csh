#! /bin/csh

set study = VIVA
set visit = visit1

set subject_list = subject_list.txt
set subject_list = (`cat $subject_list`)

cd ~/DATA/VIVA

foreach subj ($subject_list)

	cd ~/DATA/VIVA/VIVA${subj}/visit1/PROC.RST.NL

	cd RSFC
	
	mv LIPL_corr+tlrc.BRIK RIPL_corr+tlrc.BRIK
	mv LIPL_corr+tlrc.HEAD RIPL_corr+tlrc.HEAD
	mv LIPL_Z+tlrc.BRIK RIPL_Z+tlrc.BRIK
	mv LIPL_Z+tlrc.HEAD RIPL_Z+tlrc.HEAD 


	cd ../seed_ts

	mv LIPL.1D RIPL.1D

end

