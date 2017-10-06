#! /bin/csh 

set mask_dset = ~/AMBAC/STATS/Results_Dev_Neuropsychology/HaskinsPeds_NL_template_3x3x3+tlrc
set dirA = ~/DATA/VIVA
set results_dir = ~/DATA/VIVA/STATS/CHANGE


cd ${results_dir}


#######################################################################
# Correlacao da ativacao do CHANGE com o score JVQ, sem QI
#######################################################################

3dRegAna \
-rows 21 \
-cols 1 \
-xydata 8 "$dirA/VIVA105/visit1/PROC.CHANGE/stats.VIVA105+tlrc[7]" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.CHANGE/stats.VIVA106+tlrc[7]" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.CHANGE/stats.VIVA122+tlrc[7]" \
-xydata 4 "$dirA/VIVA134/visit1/PROC.CHANGE/stats.VIVA134+tlrc[7]" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.CHANGE/stats.VIVA011+tlrc[7]" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.CHANGE/stats.VIVA016+tlrc[7]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.CHANGE/stats.VIVA030+tlrc[7]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.CHANGE/stats.VIVA038+tlrc[7]" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.CHANGE/stats.VIVA035+tlrc[7]" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.CHANGE/stats.VIVA121+tlrc[7]" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.CHANGE/stats.VIVA036+tlrc[7]" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.CHANGE/stats.VIVA044+tlrc[7]" \
-xydata 8 "$dirA/VIVA108/visit1/PROC.CHANGE/stats.VIVA108+tlrc[7]" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.CHANGE/stats.VIVA004+tlrc[7]" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.CHANGE/stats.VIVA005+tlrc[7]" \
-xydata 3 "$dirA/VIVA020/visit1/PROC.CHANGE/stats.VIVA020+tlrc[7]" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.CHANGE/stats.VIVA010+tlrc[7]" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.CHANGE/stats.VIVA015+tlrc[7]" \
-xydata 5 "$dirA/VIVA014/visit1/PROC.CHANGE/stats.VIVA014+tlrc[7]" \
-model 1 : 0 \
-fcoef 0 CHANGE_JVQ.F_contstant \
-fcoef 1 CHANGE_JVQ.F_linear \
-tcoef 0 CHANGE_JVQ.t_contstant \
-tcoef 1 CHANGE_JVQ.t_linear \
-rcoef 0 CHANGE_JVQ.r_contstant \
-rcoef 1 CHANGE_JVQ.r_linear \
-bucket 0 CHANGE_JVQ.bucket



### CORTISOL

3dRegAna \
-rows 5 \
-cols 1 \
-xydata 19.27 "$dirA/VIVA106/visit1/PROC.CHANGE/stats.VIVA106+tlrc[7]" \
-xydata 23.8 "$dirA/VIVA122/visit1/PROC.CHANGE/stats.VIVA122+tlrc[7]" \
-xydata 5.48 "$dirA/VIVA031/visit1/PROC.CHANGE/stats.VIVA031+tlrc[7]" \
-xydata 11.48 "$dirA/VIVA037/visit1/PROC.CHANGE/stats.VIVA037+tlrc[7]" \
-xydata 3.75 "$dirA/VIVA121/visit1/PROC.CHANGE/stats.VIVA121+tlrc[7]" \
-model 1 : 0 \
-fcoef 0 CHANGE_CORTISOL.F_contstant \
-fcoef 1 CHANGE_CORTISOL.F_linear \
-tcoef 0 CHANGE_CORTISOL.t_contstant \
-tcoef 1 CHANGE_CORTISOL.t_linear \
-rcoef 0 CHANGE_CORTISOL.r_contstant \
-rcoef 1 CHANGE_CORTISOL.r_linear \
-bucket 0 CHANGE_CORTISOL.bucket



#######################################################################
# Correlacao da ativacao do GO com o score JVQ, sem QI
#######################################################################

3dRegAna \
-rows 11 \
-cols 1 \
-xydata 1 "$dirA/VIVA105/visit1/PROC.CHANGE/stats.GOCoef.VIVA105+tlrc" \
-xydata 9 "$dirA/VIVA106/visit1/PROC.CHANGE/stats.GOCoef.VIVA106+tlrc" \
-xydata 5 "$dirA/VIVA122/visit1/PROC.CHANGE/stats.GOCoef.VIVA122+tlrc" \
-xydata 16 "$dirA/VIVA134/visit1/PROC.CHANGE/stats.GOCoef.VIVA134+tlrc" \
-xydata 4 "$dirA/VIVA011/visit1/PROC.CHANGE/stats.GOCoef.VIVA011+tlrc" \
-xydata 3 "$dirA/VIVA016/visit1/PROC.CHANGE/stats.GOCoef.VIVA016+tlrc" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.CHANGE/stats.GOCoef.VIVA030+tlrc" \
-xydata 20 "$dirA/VIVA037/visit1/PROC.CHANGE/stats.GOCoef.VIVA037+tlrc" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.CHANGE/stats.GOCoef.VIVA038+tlrc" \
-xydata 5 "$dirA/VIVA035/visit1/PROC.CHANGE/stats.GOCoef.VIVA035+tlrc" \
-xydata 16 "$dirA/VIVA121/visit1/PROC.CHANGE/stats.GOCoef.VIVA121+tlrc" \
-model 1 : 0 \
-fcoef 0 GO_JVQ.F_contstant \
-fcoef 1 GO_JVQ.F_linear \
-tcoef 0 GO_JVQ.t_contstant \
-tcoef 1 GO_JVQ.t_linear \
-rcoef 0 JVQ.r_contstant \
-rcoef 1 GO_JVQ.r_linear \
-bucket 0 GO_JVQ.bucket




#######################################################################
# Correlacao da ativacao do CHANGE-GO com o score JVQ, sem QI
#######################################################################

3dRegAna \
-rows 11 \
-cols 1 \
-xydata 1 "$dirA/VIVA105/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA105+tlrc" \
-xydata 9 "$dirA/VIVA106/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA106+tlrc" \
-xydata 5 "$dirA/VIVA122/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA122+tlrc" \
-xydata 16 "$dirA/VIVA134/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA134+tlrc" \
-xydata 4 "$dirA/VIVA011/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA011+tlrc" \
-xydata 3 "$dirA/VIVA016/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA016+tlrc" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA030+tlrc" \
-xydata 20 "$dirA/VIVA037/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA037+tlrc" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA038+tlrc" \
-xydata 5 "$dirA/VIVA035/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA035+tlrc" \
-xydata 16 "$dirA/VIVA121/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA121+tlrc" \
-model 1 : 0 \
-fcoef 0 CH-GO_JVQ.F_contstant \
-fcoef 1 CH-GO_JVQ.F_linear \
-tcoef 0 CH-GO_JVQ.t_contstant \
-tcoef 1 CH-GO_JVQ.t_linear \
-rcoef 0 CH-JVQ.r_contstant \
-rcoef 1 CH-GO_JVQ.r_linear \
-bucket 0 CH-GO_JVQ.bucket


