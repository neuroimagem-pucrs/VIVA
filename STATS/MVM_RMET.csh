#! /bin/csh 

set dirA = ~/DATA/VIVA

3dMVM -prefix MVM_RMET -jobs 4   												\
	-wsVars Condicao													\
        -num_glt 3                												\
	-gltLabel	1	'EMOCAO'			-gltCode 1	'Condicao : 1*EMOCAO'				\
	-gltLabel	2	'SEXO'				-gltCode 2	'Condicao : 1*SEXO'				\
	-gltLabel	3	'EMOCAO-SEXO'			-gltCode 3	'Condicao : 1*EMOCAO -1*SEXO'			\
	-dataTable                                            									\
	Subj  	Condicao	InputFile                 									\
	105	EMOCAO		${dirA}/VIVA105/visit1/PROC.RMET/stats.VIVA105+tlrc'[1]'				\
	105	SEXO		${dirA}/VIVA105/visit1/PROC.RMET/stats.VIVA105+tlrc'[4]'				\
	106	EMOCAO		${dirA}/VIVA106/visit1/PROC.RMET/stats.VIVA106+tlrc'[1]'				\
	106	SEXO		${dirA}/VIVA106/visit1/PROC.RMET/stats.VIVA106+tlrc'[4]'				\
	114	EMOCAO		${dirA}/VIVA114/visit1/PROC.RMET/stats.VIVA114+tlrc'[1]'				\
	114	SEXO		${dirA}/VIVA114/visit1/PROC.RMET/stats.VIVA114+tlrc'[4]'				\
	122	EMOCAO		${dirA}/VIVA122/visit1/PROC.RMET/stats.VIVA122+tlrc'[1]'				\
	122	SEXO		${dirA}/VIVA122/visit1/PROC.RMET/stats.VIVA122+tlrc'[4]'				\
	134	EMOCAO		${dirA}/VIVA134/visit1/PROC.RMET/stats.VIVA134+tlrc'[1]'				\
	134	SEXO		${dirA}/VIVA134/visit1/PROC.RMET/stats.VIVA134+tlrc'[4]'				\
	011	EMOCAO		${dirA}/VIVA011/visit1/PROC.RMET/stats.VIVA011+tlrc'[1]'				\
	011	SEXO		${dirA}/VIVA011/visit1/PROC.RMET/stats.VIVA011+tlrc'[4]'				\
	016	EMOCAO		${dirA}/VIVA016/visit1/PROC.RMET/stats.VIVA016+tlrc'[1]'				\
	016	SEXO		${dirA}/VIVA016/visit1/PROC.RMET/stats.VIVA016+tlrc'[4]'				\
	030	EMOCAO		${dirA}/VIVA030/visit1/PROC.RMET/stats.VIVA030+tlrc'[1]'				\
	030	SEXO		${dirA}/VIVA030/visit1/PROC.RMET/stats.VIVA030+tlrc'[4]'				\
	037	EMOCAO		${dirA}/VIVA037/visit1/PROC.RMET/stats.VIVA037+tlrc'[1]'				\
	037	SEXO		${dirA}/VIVA037/visit1/PROC.RMET/stats.VIVA037+tlrc'[4]'				\
	038	EMOCAO		${dirA}/VIVA038/visit1/PROC.RMET/stats.VIVA038+tlrc'[1]'				\
	038	SEXO		${dirA}/VIVA038/visit1/PROC.RMET/stats.VIVA038+tlrc'[4]'				\
	035	EMOCAO		${dirA}/VIVA035/visit1/PROC.RMET/stats.VIVA035+tlrc'[1]'				\
	035	SEXO		${dirA}/VIVA035/visit1/PROC.RMET/stats.VIVA035+tlrc'[4]'				\
	121	EMOCAO		${dirA}/VIVA121/visit1/PROC.RMET/stats.VIVA121+tlrc'[1]'				\
	121	SEXO		${dirA}/VIVA121/visit1/PROC.RMET/stats.VIVA121+tlrc'[4]'				\
	031	EMOCAO		${dirA}/VIVA031/visit1/PROC.RMET/stats.VIVA031+tlrc'[1]'				\
	031	SEXO		${dirA}/VIVA031/visit1/PROC.RMET/stats.VIVA031+tlrc'[4]'				\
	036	EMOCAO		${dirA}/VIVA036/visit1/PROC.RMET/stats.VIVA036+tlrc'[1]'				\
	036	SEXO		${dirA}/VIVA036/visit1/PROC.RMET/stats.VIVA036+tlrc'[4]'				\
	044	EMOCAO		${dirA}/VIVA044/visit1/PROC.RMET/stats.VIVA044+tlrc'[1]'				\
	044	SEXO		${dirA}/VIVA044/visit1/PROC.RMET/stats.VIVA044+tlrc'[4]'				\
	004	EMOCAO		${dirA}/VIVA004/visit1/PROC.RMET/stats.VIVA004+tlrc'[1]'				\
	004	SEXO		${dirA}/VIVA004/visit1/PROC.RMET/stats.VIVA004+tlrc'[4]'				\
	005	EMOCAO		${dirA}/VIVA005/visit1/PROC.RMET/stats.VIVA005+tlrc'[1]'				\
	005	SEXO		${dirA}/VIVA005/visit1/PROC.RMET/stats.VIVA005+tlrc'[4]'



