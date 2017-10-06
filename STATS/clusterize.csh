#! /bin/csh


set subjs = ( VIVA105 VIVA106 VIVA122 VIVA134 VIVA011 VIVA016 VIVA030 VIVA038 VIVA035 VIVA121 VIVA036 VIVA044 VIVA108 VIVA004 VIVA005 VIVA020 VIVA010 VIVA015 VIVA014 )

#-xydata 64      "$dirA/COC201/visit1/PROC.RST.NL/RSFC/mPFC_cisler_Z+tlrc.BRIK"    \


################################################################### CKH-CKM ###########################################################################################
if (1) then

set visit = visit1

set base_folder = ~/DATA/VIVA
set mask_folder = ~/DATA/VIVA/STATS/Resultados_Preliminares/CHANGE
set mask = ${mask_folder}/CMPFCseed_X_CTQ_mask+tlrc

cd ~/DATA/VIVA/STATS/Resultados_Preliminares/CHANGE

foreach subj (${subjs})

		3dROIstats -mask ${mask}  -quiet \
				${base_folder}/${subj}/${visit}/PROC.CHANGE/RSFC/${seed}_Z+tlrc >> CLUST_CMPFCseed_X_CTQ.1D

	end
end











