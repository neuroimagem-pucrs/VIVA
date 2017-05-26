#! /bin/csh 

set mask_dset = ~/AMBAC/STATS/Results_Dev_Neuropsychology/HaskinsPeds_NL_template_3x3x3+tlrc
set dirA = ~/DATA/VIVA
set results_dir = ~/DATA/VIVA/STATS/BRAIN_2017/FALMEM


cd ${results_dir}


#######################################################################
# Correlacao da ativacao do FALSAS MEMORIAS com o score JVQ, sem QI
# FALSO - VERDADEIRO
#######################################################################

3dRegAna \
-rows 5 \
-cols 1 \
-xydata 1 "$dirA/VIVA105/visit1/PROC.FALMEM/stats.VIVA105+tlrc[10]" \
-xydata 3 "$dirA/VIVA106/visit1/PROC.FALMEM/stats.VIVA106+tlrc[10]" \
-xydata 2 "$dirA/VIVA114/visit1/PROC.FALMEM/stats.VIVA114+tlrc[10]" \
-xydata 4 "$dirA/VIVA122/visit1/PROC.FALMEM/stats.VIVA122+tlrc[10]" \
-xydata 5 "$dirA/VIVA134/visit1/PROC.FALMEM/stats.VIVA134+tlrc[10]" \
-model 1 : 0 \
-fcoef 0 FALMEM_JVQ.F_contstant \
-fcoef 1 FALMEM_JVQ.F_linear \
-tcoef 0 FALMEM_JVQ.t_contstant \
-tcoef 1 FALMEM_JVQ.t_linear \
-rcoef 0 FALMEM_JVQ.r_contstant \
-rcoef 1 FALMEM_JVQ.r_linear \
-bucket 0 FALMEM_JVQ.bucket



##############################################################################
# Correlacao da ativacao do FALSAS MEMORIAS com o score JVQ, com QI Ponderado
# FALSO - VERDADEIRO
##############################################################################

3dRegAna \
-rows 5 \
-cols 2 \
-xydata 1 92 "$dirA/VIVA105/visit1/PROC.FALMEM/stats.VIVA105+tlrc[10]" \
-xydata 3 100 "$dirA/VIVA106/visit1/PROC.FALMEM/stats.VIVA106+tlrc[10]" \
-xydata 2 103 "$dirA/VIVA114/visit1/PROC.FALMEM/stats.VIVA114+tlrc[10]" \
-xydata 4 89 "$dirA/VIVA122/visit1/PROC.FALMEM/stats.VIVA122+tlrc[10]" \
-xydata 5 86 "$dirA/VIVA134/visit1/PROC.FALMEM/stats.VIVA134+tlrc[10]" \
-model 1 : 0 2 \
-fcoef 0 FALMEM_JVQ_QI.F_contstant \
-fcoef 1 FALMEM_JVQ_QI.F_linear \
-tcoef 0 FALMEM_JVQ_QI.t_contstant \
-tcoef 1 FALMEM_JVQ_QI.t_linear \
-rcoef 0 FALMEM_JVQ_QI.r_contstant \
-rcoef 1 FALMEM_JVQ_QI.r_linear \
-bucket 0 FALMEM_JVQ_QI.bucket



