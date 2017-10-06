#! /bin/csh 

set mask_dset = ~/AMBAC/STATS/Results_Dev_Neuropsychology/HaskinsPeds_NL_template_3x3x3+tlrc
set dirA = ~/DATA/VIVA
set results_dir = ~/DATA/VIVA/STATS/Resultados_Preliminares/FALSAS_MEMORIAS


cd ${results_dir}


#######################################################################
# Correlacao da ativacao do FALSAS MEMORIAS CFM com o score JVQ, sem QI
#######################################################################

# subjs = 105 106 122 134 011 016 030 037 038 035 121 031 036 044 004 005
# 044 e 004 nao tem o JVQ soma dos modulos

3dRegAna \
-rows 20 \
-cols 1 \
-xydata 0 "$dirA/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA105+tlrc" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA106+tlrc" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA122+tlrc" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA134+tlrc" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA011+tlrc" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA016+tlrc" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA030+tlrc" \
-xydata 0 "$dirA/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA037+tlrc" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA038+tlrc" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA035+tlrc" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA121+tlrc" \
-xydata 2 "$dirA/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA031+tlrc" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA036+tlrc" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA044+tlrc" \
-xydata 8 "$dirA/VIVA108/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA108+tlrc" \
-xydata 3 "$dirA/VIVA020/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA020+tlrc" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA015+tlrc" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA010+tlrc" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA005+tlrc" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.FALMEM/por_resposta/stats.CFM-TM.VIVA004+tlrc" \
-model 1 : 0 \
-fcoef 0 FM_CFM-TM_JVQ.F_contstant \
-fcoef 1 FM_CFM-TM_JVQ.F_linear \
-tcoef 0 FM_CFM-TM_JVQ.t_contstant \
-tcoef 1 FM_CFM-TM_JVQ.t_linear \
-rcoef 0 FM_CFM-TM_JVQ.r_contstant \
-rcoef 1 FM_CFM-TM_JVQ.r_linear \
-bucket 0 FM_CFM-TM_JVQ.bucket





3dRegAna \
-rows 20 \
-cols 1 \
-xydata 0 "$dirA/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA105+tlrc" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA106+tlrc" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA122+tlrc" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA134+tlrc" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA011+tlrc" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA016+tlrc" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA030+tlrc" \
-xydata 0 "$dirA/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA037+tlrc" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA038+tlrc" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA035+tlrc" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA121+tlrc" \
-xydata 2 "$dirA/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA031+tlrc" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA036+tlrc" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA044+tlrc" \
-xydata 8 "$dirA/VIVA108/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA108+tlrc" \
-xydata 3 "$dirA/VIVA020/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA020+tlrc" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA015+tlrc" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA010+tlrc" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA005+tlrc" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.FALMEM/por_resposta/stats.CFM-MEM_VERDADEIRAS.VIVA004+tlrc" \
-model 1 : 0 \
-fcoef 0 FM_CFM-MEM_VERDADEIRAS_JVQ.F_contstant \
-fcoef 1 FM_CFM-MEM_VERDADEIRAS_JVQ.F_linear \
-tcoef 0 FM_CFM-MEM_VERDADEIRAS_JVQ.t_contstant \
-tcoef 1 FM_CFM-MEM_VERDADEIRAS_JVQ.t_linear \
-rcoef 0 FM_CFM-MEM_VERDADEIRAS_JVQ.r_contstant \
-rcoef 1 FM_CFM-MEM_VERDADEIRAS_JVQ.r_linear \
-bucket 0 FM_CFM-MEM_VERDADEIRAS_JVQ.bucket



exit










#######################################################################
# Correlacao da ativacao do FALSAS MEMORIAS CFM com o score JVQ, sem QI
#######################################################################

# subjs = 105 106 122 134 011 016 030 037 038 035 121 031 036 044 004 005
# 044 e 004 nao tem o JVQ soma dos modulos

3dRegAna \
-rows 21 \
-cols 1 \
-xydata 0 "$dirA/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.VIVA105+tlrc[0]" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.VIVA106+tlrc[0]" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.VIVA122+tlrc[0]" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.VIVA134+tlrc[0]" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.VIVA011+tlrc[0]" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.VIVA016+tlrc[0]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.VIVA030+tlrc[0]" \
-xydata 0 "$dirA/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.VIVA037+tlrc[0]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.VIVA038+tlrc[0]" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.VIVA035+tlrc[0]" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.VIVA121+tlrc[0]" \
-xydata 2 "$dirA/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.VIVA031+tlrc[0]" \
-xydata 3 "$dirA/VIVA114/visit1/PROC.FALMEM/por_resposta/stats.VIVA114+tlrc[0]" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.FALMEM/por_resposta/stats.VIVA036+tlrc[0]" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.FALMEM/por_resposta/stats.VIVA044+tlrc[0]" \
-xydata 8 "$dirA/VIVA108/visit1/PROC.FALMEM/por_resposta/stats.VIVA108+tlrc[0]" \
-xydata 3 "$dirA/VIVA020/visit1/PROC.FALMEM/por_resposta/stats.VIVA020+tlrc[0]" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.FALMEM/por_resposta/stats.VIVA015+tlrc[0]" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.FALMEM/por_resposta/stats.VIVA010+tlrc[0]" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.FALMEM/por_resposta/stats.VIVA005+tlrc[0]" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.FALMEM/por_resposta/stats.VIVA004+tlrc[0]" \
-model 1 : 0 \
-fcoef 0 FM_ALL_JVQ.F_contstant \
-fcoef 1 FM_ALL_JVQ.F_linear \
-tcoef 0 FM_ALL_JVQ.t_contstant \
-tcoef 1 FM_ALL_JVQ.t_linear \
-rcoef 0 FM_ALL_JVQ.r_contstant \
-rcoef 1 FM_ALL_JVQ.r_linear \
-bucket 0 FM_ALL_JVQ.bucket



3dRegAna \
-rows 21 \
-cols 1 \
-xydata 0 "$dirA/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.VIVA105+tlrc[1]" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.VIVA106+tlrc[1]" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.VIVA122+tlrc[1]" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.VIVA134+tlrc[1]" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.VIVA011+tlrc[1]" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.VIVA016+tlrc[1]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.VIVA030+tlrc[1]" \
-xydata 0 "$dirA/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.VIVA037+tlrc[1]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.VIVA038+tlrc[1]" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.VIVA035+tlrc[1]" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.VIVA121+tlrc[1]" \
-xydata 2 "$dirA/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.VIVA031+tlrc[1]" \
-xydata 3 "$dirA/VIVA114/visit1/PROC.FALMEM/por_resposta/stats.VIVA114+tlrc[1]" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.FALMEM/por_resposta/stats.VIVA036+tlrc[1]" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.FALMEM/por_resposta/stats.VIVA044+tlrc[1]" \
-xydata 8 "$dirA/VIVA108/visit1/PROC.FALMEM/por_resposta/stats.VIVA108+tlrc[1]" \
-xydata 3 "$dirA/VIVA020/visit1/PROC.FALMEM/por_resposta/stats.VIVA020+tlrc[1]" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.FALMEM/por_resposta/stats.VIVA015+tlrc[1]" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.FALMEM/por_resposta/stats.VIVA010+tlrc[1]" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.FALMEM/por_resposta/stats.VIVA005+tlrc[1]" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.FALMEM/por_resposta/stats.VIVA004+tlrc[1]" \
-model 1 : 0 \
-fcoef 0 FM_TM_JVQ.F_contstant \
-fcoef 1 FM_TM_JVQ.F_linear \
-tcoef 0 FM_TM_JVQ.t_contstant \
-tcoef 1 FM_TM_JVQ.t_linear \
-rcoef 0 FM_TM_JVQ.r_contstant \
-rcoef 1 FM_TM_JVQ.r_linear \
-bucket 0 FM_TM_JVQ.bucket



3dRegAna \
-rows 21 \
-cols 1 \
-xydata 0 "$dirA/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.VIVA105+tlrc[4]" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.VIVA106+tlrc[4]" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.VIVA122+tlrc[4]" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.VIVA134+tlrc[4]" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.VIVA011+tlrc[4]" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.VIVA016+tlrc[4]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.VIVA030+tlrc[4]" \
-xydata 0 "$dirA/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.VIVA037+tlrc[4]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.VIVA038+tlrc[4]" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.VIVA035+tlrc[4]" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.VIVA121+tlrc[4]" \
-xydata 2 "$dirA/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.VIVA031+tlrc[4]" \
-xydata 3 "$dirA/VIVA114/visit1/PROC.FALMEM/por_resposta/stats.VIVA114+tlrc[4]" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.FALMEM/por_resposta/stats.VIVA036+tlrc[4]" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.FALMEM/por_resposta/stats.VIVA044+tlrc[4]" \
-xydata 8 "$dirA/VIVA108/visit1/PROC.FALMEM/por_resposta/stats.VIVA108+tlrc[4]" \
-xydata 3 "$dirA/VIVA020/visit1/PROC.FALMEM/por_resposta/stats.VIVA020+tlrc[4]" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.FALMEM/por_resposta/stats.VIVA015+tlrc[4]" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.FALMEM/por_resposta/stats.VIVA010+tlrc[4]" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.FALMEM/por_resposta/stats.VIVA005+tlrc[4]" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.FALMEM/por_resposta/stats.VIVA004+tlrc[4]" \
-model 1 : 0 \
-fcoef 0 FM_TR_JVQ.F_contstant \
-fcoef 1 FM_TR_JVQ.F_linear \
-tcoef 0 FM_TR_JVQ.t_contstant \
-tcoef 1 FM_TR_JVQ.t_linear \
-rcoef 0 FM_TR_JVQ.r_contstant \
-rcoef 1 FM_TR_JVQ.r_linear \
-bucket 0 FM_TR_JVQ.bucket



3dRegAna \
-rows 21 \
-cols 1 \
-xydata 0 "$dirA/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.VIVA105+tlrc[7]" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.VIVA106+tlrc[7]" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.VIVA122+tlrc[7]" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.VIVA134+tlrc[7]" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.VIVA011+tlrc[7]" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.VIVA016+tlrc[7]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.VIVA030+tlrc[7]" \
-xydata 0 "$dirA/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.VIVA037+tlrc[7]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.VIVA038+tlrc[7]" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.VIVA035+tlrc[7]" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.VIVA121+tlrc[7]" \
-xydata 2 "$dirA/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.VIVA031+tlrc[7]" \
-xydata 3 "$dirA/VIVA114/visit1/PROC.FALMEM/por_resposta/stats.VIVA114+tlrc[7]" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.FALMEM/por_resposta/stats.VIVA036+tlrc[7]" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.FALMEM/por_resposta/stats.VIVA044+tlrc[7]" \
-xydata 8 "$dirA/VIVA108/visit1/PROC.FALMEM/por_resposta/stats.VIVA108+tlrc[7]" \
-xydata 3 "$dirA/VIVA020/visit1/PROC.FALMEM/por_resposta/stats.VIVA020+tlrc[7]" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.FALMEM/por_resposta/stats.VIVA015+tlrc[7]" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.FALMEM/por_resposta/stats.VIVA010+tlrc[7]" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.FALMEM/por_resposta/stats.VIVA005+tlrc[7]" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.FALMEM/por_resposta/stats.VIVA004+tlrc[7]" \
-model 1 : 0 \
-fcoef 0 FM_CFM_JVQ.F_contstant \
-fcoef 1 FM_CFM_JVQ.F_linear \
-tcoef 0 FM_CFM_JVQ.t_contstant \
-tcoef 1 FM_CFM_JVQ.t_linear \
-rcoef 0 FM_CFM_JVQ.r_contstant \
-rcoef 1 FM_CFM_JVQ.r_linear \
-bucket 0 FM_CFM_JVQ.bucket




3dRegAna \
-rows 21 \
-cols 1 \
-xydata 0 "$dirA/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.VIVA105+tlrc[10]" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.VIVA106+tlrc[10]" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.VIVA122+tlrc[10]" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.VIVA134+tlrc[10]" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.VIVA011+tlrc[10]" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.VIVA016+tlrc[10]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.VIVA030+tlrc[10]" \
-xydata 0 "$dirA/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.VIVA037+tlrc[10]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.VIVA038+tlrc[10]" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.VIVA035+tlrc[10]" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.VIVA121+tlrc[10]" \
-xydata 2 "$dirA/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.VIVA031+tlrc[10]" \
-xydata 3 "$dirA/VIVA114/visit1/PROC.FALMEM/por_resposta/stats.VIVA114+tlrc[10]" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.FALMEM/por_resposta/stats.VIVA036+tlrc[10]" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.FALMEM/por_resposta/stats.VIVA044+tlrc[10]" \
-xydata 8 "$dirA/VIVA108/visit1/PROC.FALMEM/por_resposta/stats.VIVA108+tlrc[10]" \
-xydata 3 "$dirA/VIVA020/visit1/PROC.FALMEM/por_resposta/stats.VIVA020+tlrc[10]" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.FALMEM/por_resposta/stats.VIVA015+tlrc[10]" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.FALMEM/por_resposta/stats.VIVA010+tlrc[10]" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.FALMEM/por_resposta/stats.VIVA005+tlrc[10]" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.FALMEM/por_resposta/stats.VIVA004+tlrc[10]" \
-model 1 : 0 \
-fcoef 0 FM_UFM_JVQ.F_contstant \
-fcoef 1 FM_UFM_JVQ.F_linear \
-tcoef 0 FM_UFM_JVQ.t_contstant \
-tcoef 1 FM_UFM_JVQ.t_linear \
-rcoef 0 FM_UFM_JVQ.r_contstant \
-rcoef 1 FM_UFM_JVQ.r_linear \
-bucket 0 FM_UFM_JVQ.bucket




3dRegAna \
-rows 21 \
-cols 1 \
-xydata 0 "$dirA/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.VIVA105+tlrc[13]" \
-xydata 11 "$dirA/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.VIVA106+tlrc[13]" \
-xydata 6 "$dirA/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.VIVA122+tlrc[13]" \
-xydata 11 "$dirA/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.VIVA134+tlrc[13]" \
-xydata 2 "$dirA/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.VIVA011+tlrc[13]" \
-xydata 1 "$dirA/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.VIVA016+tlrc[13]" \
-xydata 6 "$dirA/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.VIVA030+tlrc[13]" \
-xydata 0 "$dirA/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.VIVA037+tlrc[13]" \
-xydata 0 "$dirA/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.VIVA038+tlrc[13]" \
-xydata 4 "$dirA/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.VIVA035+tlrc[13]" \
-xydata 0 "$dirA/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.VIVA121+tlrc[13]" \
-xydata 2 "$dirA/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.VIVA031+tlrc[13]" \
-xydata 3 "$dirA/VIVA114/visit1/PROC.FALMEM/por_resposta/stats.VIVA114+tlrc[13]" \
-xydata 0 "$dirA/VIVA036/visit1/PROC.FALMEM/por_resposta/stats.VIVA036+tlrc[13]" \
-xydata 2 "$dirA/VIVA044/visit1/PROC.FALMEM/por_resposta/stats.VIVA044+tlrc[13]" \
-xydata 8 "$dirA/VIVA108/visit1/PROC.FALMEM/por_resposta/stats.VIVA108+tlrc[13]" \
-xydata 3 "$dirA/VIVA020/visit1/PROC.FALMEM/por_resposta/stats.VIVA020+tlrc[13]" \
-xydata 3 "$dirA/VIVA015/visit1/PROC.FALMEM/por_resposta/stats.VIVA015+tlrc[13]" \
-xydata 6 "$dirA/VIVA010/visit1/PROC.FALMEM/por_resposta/stats.VIVA010+tlrc[13]" \
-xydata 6 "$dirA/VIVA005/visit1/PROC.FALMEM/por_resposta/stats.VIVA005+tlrc[13]" \
-xydata 14 "$dirA/VIVA004/visit1/PROC.FALMEM/por_resposta/stats.VIVA004+tlrc[13]" \
-model 1 : 0 \
-fcoef 0 FM_FR_JVQ.F_contstant \
-fcoef 1 FM_FR_JVQ.F_linear \
-tcoef 0 FM_FR_JVQ.t_contstant \
-tcoef 1 FM_FR_JVQ.t_linear \
-rcoef 0 FM_FR_JVQ.r_contstant \
-rcoef 1 FM_FR_JVQ.r_linear \
-bucket 0 FM_FR_JVQ.bucket





