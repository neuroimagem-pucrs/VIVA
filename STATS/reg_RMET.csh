#! /bin/csh 

set mask_dset = ~/AMBAC/STATS/Results_Dev_Neuropsychology/HaskinsPeds_NL_template_3x3x3+tlrc
set dirA = ~/DATA/VIVA
set results_dir = ~/DATA/VIVA/STATS/


cd ${results_dir}


#######################################################################
# Correlacao da ativacao do RMET - EMOCAO com o score JVQ, sem QI
#######################################################################

3dRegAna \
-rows 11 \
-cols 1 \
-xydata 1 "$dirA/VIVA105/visit1/PROC.RMET/stats.VIVA105+tlrc[1]" \
-xydata 9 "$dirA/VIVA106/visit1/PROC.RMET/stats.VIVA106+tlrc[1]" \
-xydata 5 "$dirA/VIVA122/visit1/PROC.RMET/stats.VIVA122+tlrc[1]" \
-xydata 16 "$dirA/VIVA134/visit1/PROC.RMET/stats.VIVA134+tlrc[1]" \
-xydata 4 "$dirA/VIVA011/visit1/PROC.RMET/stats.VIVA011+tlrc[1]" \
-xydata 3 "$dirA/VIVA016/visit1/PROC.RMET/stats.VIVA016+tlrc[1]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.RMET/stats.VIVA030+tlrc[1]" \
-xydata 20 "$dirA/VIVA037/visit1/PROC.RMET/stats.VIVA037+tlrc[1]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.RMET/stats.VIVA038+tlrc[1]" \
-xydata 5 "$dirA/VIVA035/visit1/PROC.RMET/stats.VIVA035+tlrc[1]" \
-xydata 16 "$dirA/VIVA121/visit1/PROC.RMET/stats.VIVA121+tlrc[1]" \
-model 1 : 0 \
-fcoef 0 RMET_EMOCAO_JVQ.F_contstant \
-fcoef 1 RMET_EMOCAO_JVQ.F_linear \
-tcoef 0 RMET_EMOCAO_JVQ.t_contstant \
-tcoef 1 RMET_EMOCAO_JVQ.t_linear \
-rcoef 0 RMET_EMOCAO_JVQ.r_contstant \
-rcoef 1 RMET_EMOCAO_JVQ.r_linear \
-bucket 0 RMET_EMOCAO_JVQ.bucket



#######################################################################
# Correlacao da ativacao do RMET - SEXO com o score JVQ, sem QI
#######################################################################

3dRegAna \
-rows 11 \
-cols 1 \
-xydata 1 "$dirA/VIVA105/visit1/PROC.RMET/stats.VIVA105+tlrc[4]" \
-xydata 9 "$dirA/VIVA106/visit1/PROC.RMET/stats.VIVA106+tlrc[4]" \
-xydata 5 "$dirA/VIVA122/visit1/PROC.RMET/stats.VIVA122+tlrc[4]" \
-xydata 16 "$dirA/VIVA134/visit1/PROC.RMET/stats.VIVA134+tlrc[4]" \
-xydata 4 "$dirA/VIVA011/visit1/PROC.RMET/stats.VIVA011+tlrc[4]" \
-xydata 3 "$dirA/VIVA016/visit1/PROC.RMET/stats.VIVA016+tlrc[4]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.RMET/stats.VIVA030+tlrc[4]" \
-xydata 20 "$dirA/VIVA037/visit1/PROC.RMET/stats.VIVA037+tlrc[4]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.RMET/stats.VIVA038+tlrc[4]" \
-xydata 5 "$dirA/VIVA035/visit1/PROC.RMET/stats.VIVA035+tlrc[4]" \
-xydata 16 "$dirA/VIVA121/visit1/PROC.RMET/stats.VIVA121+tlrc[4]" \
-model 1 : 0 \
-fcoef 0 RMET_SEXO_JVQ.F_contstant \
-fcoef 1 RMET_SEXO_JVQ.F_linear \
-tcoef 0 RMET_SEXO_JVQ.t_contstant \
-tcoef 1 RMET_SEXO_JVQ.t_linear \
-rcoef 0 RMET_SEXO_JVQ.r_contstant \
-rcoef 1 RMET_SEXO_JVQ.r_linear \
-bucket 0 RMET_SEXO_JVQ.bucket




#######################################################################
# Correlacao da ativacao do RMET -> EMOCAO-SEXO com o score JVQ, sem QI
#######################################################################

3dRegAna \
-rows 11 \
-cols 1 \
-xydata 1 "$dirA/VIVA105/visit1/PROC.RMET/stats.VIVA105+tlrc[28]" \
-xydata 9 "$dirA/VIVA106/visit1/PROC.RMET/stats.VIVA106+tlrc[28]" \
-xydata 5 "$dirA/VIVA122/visit1/PROC.RMET/stats.VIVA122+tlrc[28]" \
-xydata 16 "$dirA/VIVA134/visit1/PROC.RMET/stats.VIVA134+tlrc[28]" \
-xydata 4 "$dirA/VIVA011/visit1/PROC.RMET/stats.VIVA011+tlrc[28]" \
-xydata 3 "$dirA/VIVA016/visit1/PROC.RMET/stats.VIVA016+tlrc[28]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.RMET/stats.VIVA030+tlrc[28]" \
-xydata 20 "$dirA/VIVA037/visit1/PROC.RMET/stats.VIVA037+tlrc[28]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.RMET/stats.VIVA038+tlrc[28]" \
-xydata 5 "$dirA/VIVA035/visit1/PROC.RMET/stats.VIVA035+tlrc[28]" \
-xydata 16 "$dirA/VIVA121/visit1/PROC.RMET/stats.VIVA121+tlrc[28]" \
-model 1 : 0 \
-fcoef 0 RMET_E-S_JVQ.F_contstant \
-fcoef 1 RMET_E-S_JVQ.F_linear \
-tcoef 0 RMET_E-S_JVQ.t_contstant \
-tcoef 1 RMET_E-S_JVQ.t_linear \
-rcoef 0 RMET_E-S_JVQ.r_contstant \
-rcoef 1 RMET_E-S_JVQ.r_linear \
-bucket 0 RMET_E-S_JVQ.bucket


