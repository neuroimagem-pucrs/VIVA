#! /bin/csh 

set mask_dset = ~/AMBAC/STATS/Results_Dev_Neuropsychology/HaskinsPeds_NL_template_3x3x3+tlrc
set dirA = ~/DATA/VIVA
set results_dir = ~/DATA/VIVA/STATS/OLD/BRAIN_2017/CHANGE/REGRESSAO


cd ${results_dir}


#######################################################################
# Correlacao da ativacao do CHANGE com o score JVQ, sem QI
#######################################################################

3dRegAna \
-rows 19 \
-cols 1 \
-xydata 0 "$dirA/VIVA105/visit1/PROC.CHANGE/stats.VIVA105+tlrc[7]" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.CHANGE/stats.VIVA106+tlrc[7]" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.CHANGE/stats.VIVA122+tlrc[7]" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.CHANGE/stats.VIVA134+tlrc[7]" \
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
-fcoef 0 CHANGE_JVQ_INSCER.F_contstant \
-fcoef 1 CHANGE_JVQ_INSCER.F_linear \
-tcoef 0 CHANGE_JVQ_INSCER.t_contstant \
-tcoef 1 CHANGE_JVQ_INSCER.t_linear \
-rcoef 0 CHANGE_JVQ_INSCER.r_contstant \
-rcoef 1 CHANGE_JVQ_INSCER.r_linear \
-bucket 0 CHANGE_JVQ_INSCER.bucket




#######################################################################
# Correlacao da ativacao do GO com o score JVQ, sem QI
#######################################################################

3dRegAna \
-rows 19 \
-cols 1 \
-xydata 0 "$dirA/VIVA105/visit1/PROC.CHANGE/stats.GOCoef.VIVA105+tlrc" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.CHANGE/stats.GOCoef.VIVA106+tlrc" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.CHANGE/stats.GOCoef.VIVA122+tlrc" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.CHANGE/stats.GOCoef.VIVA134+tlrc" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.CHANGE/stats.GOCoef.VIVA011+tlrc" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.CHANGE/stats.GOCoef.VIVA016+tlrc" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.CHANGE/stats.GOCoef.VIVA030+tlrc" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.CHANGE/stats.GOCoef.VIVA038+tlrc" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.CHANGE/stats.GOCoef.VIVA035+tlrc" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.CHANGE/stats.GOCoef.VIVA121+tlrc" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.CHANGE/stats.GOCoef.VIVA036+tlrc" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.CHANGE/stats.GOCoef.VIVA044+tlrc" \
-xydata 8 "$dirA/VIVA108/visit1/PROC.CHANGE/stats.GOCoef.VIVA108+tlrc" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.CHANGE/stats.GOCoef.VIVA004+tlrc" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.CHANGE/stats.GOCoef.VIVA005+tlrc" \
-xydata 3 "$dirA/VIVA020/visit1/PROC.CHANGE/stats.GOCoef.VIVA020+tlrc" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.CHANGE/stats.GOCoef.VIVA010+tlrc" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.CHANGE/stats.GOCoef.VIVA015+tlrc" \
-xydata 5 "$dirA/VIVA014/visit1/PROC.CHANGE/stats.GOCoef.VIVA014+tlrc" \
-model 1 : 0 \
-fcoef 0 GO_JVQ_INSCER.F_contstant \
-fcoef 1 GO_JVQ_INSCER.F_linear \
-tcoef 0 GO_JVQ_INSCER.t_contstant \
-tcoef 1 GO_JVQ_INSCER.t_linear \
-rcoef 0 GO_JVQ_INSCER.r_contstant \
-rcoef 1 GO_JVQ_INSCER.r_linear \
-bucket 0 GO_JVQ_INSCER.bucket




#######################################################################
# Correlacao da ativacao do CHANGE-GO com o score JVQ, sem QI
#######################################################################

3dRegAna \
-rows 19 \
-cols 1 \
-xydata 0 "$dirA/VIVA105/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA105+tlrc" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA106+tlrc" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA122+tlrc" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA134+tlrc" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA011+tlrc" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA016+tlrc" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA030+tlrc" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA038+tlrc" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA035+tlrc" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA121+tlrc" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA036+tlrc" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA044+tlrc" \
-xydata 8 "$dirA/VIVA108/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA108+tlrc" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA004+tlrc" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA005+tlrc" \
-xydata 3 "$dirA/VIVA020/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA020+tlrc" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA010+tlrc" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA015+tlrc" \
-xydata 5 "$dirA/VIVA014/visit1/PROC.CHANGE/stats.CHANGE_vs_GO.VIVA014+tlrc" \
-model 1 : 0 \
-fcoef 0 CHvsGO_JVQ_INSCER.F_contstant \
-fcoef 1 CHvsGO_JVQ_INSCER.F_linear \
-tcoef 0 CHvsGO_JVQ_INSCER.t_contstant \
-tcoef 1 CHvsGO_JVQ_INSCER.t_linear \
-rcoef 0 CHvsJVQ_INSCER.r_contstant \
-rcoef 1 CHvsGO_JVQ_INSCER.r_linear \
-bucket 0 CHvsGO_JVQ_INSCER.bucket


