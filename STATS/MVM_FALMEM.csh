#! /bin/csh 

set dirA = ~/DATA/VIVA

cd $dirA/STATS

3dMVM -prefix MVM_FALMEM_porParticipante -jobs 4   												\
	-wsVars Condicao													\
        -num_glt 10                												\
	-gltLabel	1	'TM'			-gltCode 1	'Condicao : 1*TM'				\
	-gltLabel	2	'TR'			-gltCode 2	'Condicao : 1*TR'				\
	-gltLabel	3	'CFM'			-gltCode 3	'Condicao : 1*CFM'				\
	-gltLabel	4	'UFM'			-gltCode 4	'Condicao : 1*UFM'				\
	-gltLabel	5	'FR'			-gltCode 5	'Condicao : 1*FR'				\
	-gltLabel	6	'TM+TR'			-gltCode 6	'Condicao : 0.5*TM 0.5*TR'			\
	-gltLabel	7	'UFM+FR'		-gltCode 7	'Condicao : 0.5*UFM 0.5*FR'			\
	-gltLabel	8	'(TM+TR)-CFM'		-gltCode 8	'Condicao : 0.5*TM 0.5*TR -1*CFM'		\
	-gltLabel	9	'(UFM+FR)-CFM'		-gltCode 9	'Condicao : 0.5*UFM 0.5*FR -1*CFM'		\
	-gltLabel	10	'(TM+TR)-(UFM+FR)'	-gltCode 10	'Condicao : 0.5*TM 0.5*TR -0.5*UFM -0.5*FR'	\
	-dataTable                                            									\
	Subj  	Condicao	InputFile                 									\
	105	TM		${dirA}/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.VIVA105+tlrc'[1]'				\
	105	TR		${dirA}/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.VIVA105+tlrc'[4]'				\
	105	CFM		${dirA}/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.VIVA105+tlrc'[7]'				\
	105	UFM		${dirA}/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.VIVA105+tlrc'[10]'			\
	105	FR		${dirA}/VIVA105/visit1/PROC.FALMEM/por_resposta/stats.VIVA105+tlrc'[13]'			\
	106	TM		${dirA}/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.VIVA106+tlrc'[1]'				\
	106	TR		${dirA}/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.VIVA106+tlrc'[4]'				\
	106	CFM		${dirA}/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.VIVA106+tlrc'[7]'				\
	106	UFM		${dirA}/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.VIVA106+tlrc'[10]'			\
	106	FR		${dirA}/VIVA106/visit1/PROC.FALMEM/por_resposta/stats.VIVA106+tlrc'[13]'			\
	114	TM		${dirA}/VIVA114/visit1/PROC.FALMEM/por_resposta/stats.VIVA114+tlrc'[1]'				\
	114	TR		${dirA}/VIVA114/visit1/PROC.FALMEM/por_resposta/stats.VIVA114+tlrc'[4]'				\
	114	CFM		${dirA}/VIVA114/visit1/PROC.FALMEM/por_resposta/stats.VIVA114+tlrc'[7]'				\
	114	UFM		${dirA}/VIVA114/visit1/PROC.FALMEM/por_resposta/stats.VIVA114+tlrc'[10]'			\
	114	FR		${dirA}/VIVA114/visit1/PROC.FALMEM/por_resposta/stats.VIVA114+tlrc'[13]'			\
	122	TM		${dirA}/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.VIVA122+tlrc'[1]'				\
	122	TR		${dirA}/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.VIVA122+tlrc'[4]'				\
	122	CFM		${dirA}/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.VIVA122+tlrc'[7]'				\
	122	UFM		${dirA}/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.VIVA122+tlrc'[10]'			\
	122	FR		${dirA}/VIVA122/visit1/PROC.FALMEM/por_resposta/stats.VIVA122+tlrc'[13]'			\
	134	TM		${dirA}/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.VIVA134+tlrc'[1]'				\
	134	TR		${dirA}/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.VIVA134+tlrc'[4]'				\
	134	CFM		${dirA}/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.VIVA134+tlrc'[7]'				\
	134	UFM		${dirA}/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.VIVA134+tlrc'[10]'			\
	134	FR		${dirA}/VIVA134/visit1/PROC.FALMEM/por_resposta/stats.VIVA134+tlrc'[13]'			\
	011	TM		${dirA}/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.VIVA011+tlrc'[1]'				\
	011	TR		${dirA}/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.VIVA011+tlrc'[4]'				\
	011	CFM		${dirA}/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.VIVA011+tlrc'[7]'				\
	011	UFM		${dirA}/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.VIVA011+tlrc'[10]'			\
	011	FR		${dirA}/VIVA011/visit1/PROC.FALMEM/por_resposta/stats.VIVA011+tlrc'[13]'			\
	016	TM		${dirA}/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.VIVA016+tlrc'[1]'				\
	016	TR		${dirA}/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.VIVA016+tlrc'[4]'				\
	016	CFM		${dirA}/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.VIVA016+tlrc'[7]'				\
	016	UFM		${dirA}/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.VIVA016+tlrc'[10]'			\
	016	FR		${dirA}/VIVA016/visit1/PROC.FALMEM/por_resposta/stats.VIVA016+tlrc'[13]'			\
	030	TM		${dirA}/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.VIVA030+tlrc'[1]'				\
	030	TR		${dirA}/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.VIVA030+tlrc'[4]'				\
	030	CFM		${dirA}/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.VIVA030+tlrc'[7]'				\
	030	UFM		${dirA}/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.VIVA030+tlrc'[10]'			\
	030	FR		${dirA}/VIVA030/visit1/PROC.FALMEM/por_resposta/stats.VIVA030+tlrc'[13]'			\
	037	TM		${dirA}/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.VIVA037+tlrc'[1]'				\
	037	TR		${dirA}/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.VIVA037+tlrc'[4]'				\
	037	CFM		${dirA}/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.VIVA037+tlrc'[7]'				\
	037	UFM		${dirA}/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.VIVA037+tlrc'[10]'			\
	037	FR		${dirA}/VIVA037/visit1/PROC.FALMEM/por_resposta/stats.VIVA037+tlrc'[13]'			\
	038	TM		${dirA}/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.VIVA038+tlrc'[1]'				\
	038	TR		${dirA}/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.VIVA038+tlrc'[4]'				\
	038	CFM		${dirA}/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.VIVA038+tlrc'[7]'				\
	038	UFM		${dirA}/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.VIVA038+tlrc'[10]'			\
	038	FR		${dirA}/VIVA038/visit1/PROC.FALMEM/por_resposta/stats.VIVA038+tlrc'[13]'			\
	035	TM		${dirA}/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.VIVA035+tlrc'[1]'				\
	035	TR		${dirA}/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.VIVA035+tlrc'[4]'				\
	035	CFM		${dirA}/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.VIVA035+tlrc'[7]'				\
	035	UFM		${dirA}/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.VIVA035+tlrc'[10]'			\
	035	FR		${dirA}/VIVA035/visit1/PROC.FALMEM/por_resposta/stats.VIVA035+tlrc'[13]'			\
	121	TM		${dirA}/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.VIVA121+tlrc'[1]'				\
	121	TR		${dirA}/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.VIVA121+tlrc'[4]'				\
	121	CFM		${dirA}/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.VIVA121+tlrc'[7]'				\
	121	UFM		${dirA}/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.VIVA121+tlrc'[10]'			\
	121	FR		${dirA}/VIVA121/visit1/PROC.FALMEM/por_resposta/stats.VIVA121+tlrc'[13]'			\
	031	TM		${dirA}/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.VIVA031+tlrc'[1]'				\
	031	TR		${dirA}/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.VIVA031+tlrc'[4]'				\
	031	CFM		${dirA}/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.VIVA031+tlrc'[7]'				\
	031	UFM		${dirA}/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.VIVA031+tlrc'[10]'			\
	031	FR		${dirA}/VIVA031/visit1/PROC.FALMEM/por_resposta/stats.VIVA031+tlrc'[13]'

