#! /bin/csh 

set mask_dset = ~/AMBAC/STATS/Results_Dev_Neuropsychology/HaskinsPeds_NL_template_3x3x3+tlrc
set dirA = ~/DATA/VIVA
set results_dir = ~/DATA/VIVA/STATS/Resultados_Preliminares/RMET


cd ${results_dir}

#######################################################################
# Correlacao da ativacao do RMET - EMOCAO com o score JVQ FULL
# JVQ FULL coluna KE da tabela DADOS GERAIS VIVA
#######################################################################

# subjs = 105 106 122 134 011 016 030 037 038 035 121 031 036 044 004 005
# 044 e 004 nao tem o JVQ soma dos modulos

3dRegAna \
-rows 25 \
-cols 1 \
-xydata 1 "$dirA/VIVA105/visit1/PROC.RMET/stats.VIVA105+tlrc[1]" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.RMET/stats.VIVA106+tlrc[1]" \
-xydata 3 "$dirA/VIVA114/visit1/PROC.RMET/stats.VIVA114+tlrc[1]" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.RMET/stats.VIVA122+tlrc[1]" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.RMET/stats.VIVA134+tlrc[1]" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.RMET/stats.VIVA011+tlrc[1]" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.RMET/stats.VIVA016+tlrc[1]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.RMET/stats.VIVA030+tlrc[1]" \
-xydata 0 "$dirA/VIVA037/visit1/PROC.RMET/stats.VIVA037+tlrc[1]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.RMET/stats.VIVA038+tlrc[1]" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.RMET/stats.VIVA035+tlrc[1]" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.RMET/stats.VIVA121+tlrc[1]" \
-xydata 2 "$dirA/VIVA031/visit1/PROC.RMET/stats.VIVA031+tlrc[1]" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.RMET/stats.VIVA036+tlrc[1]" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.RMET/stats.VIVA044+tlrc[1]" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.RMET/stats.VIVA004+tlrc[1]" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.RMET/stats.VIVA005+tlrc[1]" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.RMET/stats.VIVA010+tlrc[1]" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.RMET/stats.VIVA015+tlrc[1]" \
-xydata 5 "$dirA/VIVA014/visit1/PROC.RMET/stats.VIVA014+tlrc[1]" \
-xydata 2 "$dirA/VIVA013/visit1/PROC.RMET/stats.VIVA013+tlrc[1]" \
-xydata 2 "$dirA/VIVA002/visit1/PROC.RMET/stats.VIVA002+tlrc[1]" \
-xydata 4 "$dirA/VIVA023/visit1/PROC.RMET/stats.VIVA023+tlrc[1]" \
-xydata 2 "$dirA/VIVA027/visit1/PROC.RMET/stats.VIVA027+tlrc[1]" \
-xydata 20 "$dirA/VIVA043/visit1/PROC.RMET/stats.VIVA043+tlrc[1]" \
-model 1 : 0 \
-fcoef 0 RMET_EMOCAO_JVQ.F_contstant \
-fcoef 1 RMET_EMOCAO_JVQ.F_linear \
-tcoef 0 RMET_EMOCAO_JVQ.t_contstant \
-tcoef 1 RMET_EMOCAO_JVQ.t_linear \
-rcoef 0 RMET_EMOCAO_JVQ.r_contstant \
-rcoef 1 RMET_EMOCAO_JVQ.r_linear \
-bucket 0 RMET_EMOCAO_JVQ.bucket


#######################################################################
# Correlacao da ativacao do RMET - SEXO com o score JVQ FULL
# JVQ FULL coluna KE da tabela DADOS GERAIS VIVA
#######################################################################

# subjs = 105 106 122 134 011 016 030 037 038 035 121 031 036 044 004 005
# 044 e 004 nao tem o JVQ soma dos modulos

3dRegAna \
-rows 25 \
-cols 1 \
-xydata 1 "$dirA/VIVA105/visit1/PROC.RMET/stats.VIVA105+tlrc[4]" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.RMET/stats.VIVA106+tlrc[4]" \
-xydata 3 "$dirA/VIVA114/visit1/PROC.RMET/stats.VIVA114+tlrc[4]" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.RMET/stats.VIVA122+tlrc[4]" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.RMET/stats.VIVA134+tlrc[4]" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.RMET/stats.VIVA011+tlrc[4]" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.RMET/stats.VIVA016+tlrc[4]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.RMET/stats.VIVA030+tlrc[4]" \
-xydata 0 "$dirA/VIVA037/visit1/PROC.RMET/stats.VIVA037+tlrc[4]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.RMET/stats.VIVA038+tlrc[4]" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.RMET/stats.VIVA035+tlrc[4]" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.RMET/stats.VIVA121+tlrc[4]" \
-xydata 2 "$dirA/VIVA031/visit1/PROC.RMET/stats.VIVA031+tlrc[4]" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.RMET/stats.VIVA036+tlrc[4]" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.RMET/stats.VIVA044+tlrc[4]" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.RMET/stats.VIVA004+tlrc[4]" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.RMET/stats.VIVA005+tlrc[4]" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.RMET/stats.VIVA010+tlrc[4]" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.RMET/stats.VIVA015+tlrc[4]" \
-xydata 5 "$dirA/VIVA014/visit1/PROC.RMET/stats.VIVA014+tlrc[4]" \
-xydata 2 "$dirA/VIVA013/visit1/PROC.RMET/stats.VIVA013+tlrc[4]" \
-xydata 2 "$dirA/VIVA002/visit1/PROC.RMET/stats.VIVA002+tlrc[4]" \
-xydata 4 "$dirA/VIVA023/visit1/PROC.RMET/stats.VIVA023+tlrc[4]" \
-xydata 2 "$dirA/VIVA027/visit1/PROC.RMET/stats.VIVA027+tlrc[4]" \
-xydata 20 "$dirA/VIVA043/visit1/PROC.RMET/stats.VIVA043+tlrc[4]" \
-model 1 : 0 \
-fcoef 0 RMET_SEXO_JVQ.F_contstant \
-fcoef 1 RMET_SEXO_JVQ.F_linear \
-tcoef 0 RMET_SEXO_JVQ.t_contstant \
-tcoef 1 RMET_SEXO_JVQ.t_linear \
-rcoef 0 RMET_SEXO_JVQ.r_contstant \
-rcoef 1 RMET_SEXO_JVQ.r_linear \
-bucket 0 RMET_SEXO_JVQ.bucket




#######################################################################
# Correlacao da ativacao do RMET - EMOCAO VS SEXO com o score JVQ FULL
# JVQ FULL coluna KE da tabela DADOS GERAIS VIVA
#######################################################################

# subjs = 105 106 122 134 011 016 030 037 038 035 121 031 036 044 004 005
# 044 e 004 nao tem o JVQ soma dos modulos

3dRegAna \
-rows 25 \
-cols 1 \
-xydata 1 "$dirA/VIVA105/visit1/PROC.RMET/stats.VIVA105+tlrc[28]" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.RMET/stats.VIVA106+tlrc[28]" \
-xydata 3 "$dirA/VIVA114/visit1/PROC.RMET/stats.VIVA114+tlrc[28]" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.RMET/stats.VIVA122+tlrc[28]" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.RMET/stats.VIVA134+tlrc[28]" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.RMET/stats.VIVA011+tlrc[28]" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.RMET/stats.VIVA016+tlrc[28]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.RMET/stats.VIVA030+tlrc[28]" \
-xydata 0 "$dirA/VIVA037/visit1/PROC.RMET/stats.VIVA037+tlrc[28]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.RMET/stats.VIVA038+tlrc[28]" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.RMET/stats.VIVA035+tlrc[28]" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.RMET/stats.VIVA121+tlrc[28]" \
-xydata 2 "$dirA/VIVA031/visit1/PROC.RMET/stats.VIVA031+tlrc[28]" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.RMET/stats.VIVA036+tlrc[28]" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.RMET/stats.VIVA044+tlrc[28]" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.RMET/stats.VIVA004+tlrc[28]" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.RMET/stats.VIVA005+tlrc[28]" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.RMET/stats.VIVA010+tlrc[28]" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.RMET/stats.VIVA015+tlrc[28]" \
-xydata 5 "$dirA/VIVA014/visit1/PROC.RMET/stats.VIVA014+tlrc[28]" \
-xydata 2 "$dirA/VIVA013/visit1/PROC.RMET/stats.VIVA013+tlrc[28]" \
-xydata 2 "$dirA/VIVA002/visit1/PROC.RMET/stats.VIVA002+tlrc[28]" \
-xydata 4 "$dirA/VIVA023/visit1/PROC.RMET/stats.VIVA023+tlrc[28]" \
-xydata 2 "$dirA/VIVA027/visit1/PROC.RMET/stats.VIVA027+tlrc[28]" \
-xydata 20 "$dirA/VIVA043/visit1/PROC.RMET/stats.VIVA043+tlrc[28]" \
-model 1 : 0 \
-fcoef 0 RMET_EMOCAOvsSEXO_JVQ.F_contstant \
-fcoef 1 RMET_EMOCAOvsSEXO_JVQ.F_linear \
-tcoef 0 RMET_EMOCAOvsSEXO_JVQ.t_contstant \
-tcoef 1 RMET_EMOCAOvsSEXO_JVQ.t_linear \
-rcoef 0 RMET_EMOCAOvsSEXO_JVQ.r_contstant \
-rcoef 1 RMET_EMOCAOvsSEXO_JVQ.r_linear \
-bucket 0 RMET_EMOCAOvsSEXO_JVQ.bucket



