#! /bin/csh 


3dMVM -prefix MVM_CHANGE -jobs 4   												\
	-wsVars 'Condicao'													\
        -num_glt 6                												\
	-gltLabel	1	'CHANGE'			-gltCode 1	'Condicao : 1*CHANGE'				\
	-gltLabel	2	'GO_X'				-gltCode 2	'Condicao : 1*GO_X'				\
	-gltLabel	3	'GO_O'				-gltCode 3	'Condicao : 1*GO_O'				\
	-gltLabel	4	'(GO_X+GO_O)'			-gltCode 4	'Condicao : 0.5*GO_X 0.5*GO_O'			\
	-gltLabel	5	'CHANGE.vs.GO'			-gltCode 5	'Condicao : 1*CHANGE -0.5*GO_X -0.5*GO_O'	\
	-gltLabel	6	'CHANGE+GO_X+GO_O'		-gltCode 6	'Condicao : 0.34*CHANGE 0.33*GO_X 0.33*GO_O'	\
	-dataTable                                            									\
	Subj  	Condicao	InputFile                 									\
	105	CHANGE		~/DATA/VIVA/VIVA105/visit1/PROC.CHANGE/stats.VIVA105+tlrc'[7]'				\
	105	GO_X		~/DATA/VIVA/VIVA105/visit1/PROC.CHANGE/stats.VIVA105+tlrc'[1]'				\
	105	GO_O		~/DATA/VIVA/VIVA105/visit1/PROC.CHANGE/stats.VIVA105+tlrc'[4]'				\
	106	CHANGE		~/DATA/VIVA/VIVA106/visit1/PROC.CHANGE/stats.VIVA106+tlrc'[7]'				\
	106	GO_X		~/DATA/VIVA/VIVA106/visit1/PROC.CHANGE/stats.VIVA106+tlrc'[1]'				\
	106	GO_O		~/DATA/VIVA/VIVA106/visit1/PROC.CHANGE/stats.VIVA106+tlrc'[4]'				\
	122	CHANGE		~/DATA/VIVA/VIVA122/visit1/PROC.CHANGE/stats.VIVA122+tlrc'[7]'				\
	122	GO_X		~/DATA/VIVA/VIVA122/visit1/PROC.CHANGE/stats.VIVA122+tlrc'[1]'				\
	122	GO_O		~/DATA/VIVA/VIVA122/visit1/PROC.CHANGE/stats.VIVA122+tlrc'[4]'				\
	134	CHANGE		~/DATA/VIVA/VIVA134/visit1/PROC.CHANGE/stats.VIVA134+tlrc'[7]'				\
	134	GO_X		~/DATA/VIVA/VIVA134/visit1/PROC.CHANGE/stats.VIVA134+tlrc'[1]'				\
	134	GO_O		~/DATA/VIVA/VIVA134/visit1/PROC.CHANGE/stats.VIVA134+tlrc'[4]'				\
	011	CHANGE		~/DATA/VIVA/VIVA011/visit1/PROC.CHANGE/stats.VIVA011+tlrc'[7]'				\
	011	GO_X		~/DATA/VIVA/VIVA011/visit1/PROC.CHANGE/stats.VIVA011+tlrc'[1]'				\
	011	GO_O		~/DATA/VIVA/VIVA011/visit1/PROC.CHANGE/stats.VIVA011+tlrc'[4]'				\
	016	CHANGE		~/DATA/VIVA/VIVA016/visit1/PROC.CHANGE/stats.VIVA016+tlrc'[7]'				\
	016	GO_X		~/DATA/VIVA/VIVA016/visit1/PROC.CHANGE/stats.VIVA016+tlrc'[1]'				\
	016	GO_O		~/DATA/VIVA/VIVA016/visit1/PROC.CHANGE/stats.VIVA016+tlrc'[4]'				\
	030	CHANGE		~/DATA/VIVA/VIVA030/visit1/PROC.CHANGE/stats.VIVA030+tlrc'[7]'				\
	030	GO_X		~/DATA/VIVA/VIVA030/visit1/PROC.CHANGE/stats.VIVA030+tlrc'[1]'				\
	030	GO_O		~/DATA/VIVA/VIVA030/visit1/PROC.CHANGE/stats.VIVA030+tlrc'[4]'				\
	037	CHANGE		~/DATA/VIVA/VIVA037/visit1/PROC.CHANGE/stats.VIVA037+tlrc'[7]'				\
	037	GO_X		~/DATA/VIVA/VIVA037/visit1/PROC.CHANGE/stats.VIVA037+tlrc'[1]'				\
	037	GO_O		~/DATA/VIVA/VIVA037/visit1/PROC.CHANGE/stats.VIVA037+tlrc'[4]'				\
	038	CHANGE		~/DATA/VIVA/VIVA038/visit1/PROC.CHANGE/stats.VIVA038+tlrc'[7]'				\
	038	GO_X		~/DATA/VIVA/VIVA038/visit1/PROC.CHANGE/stats.VIVA038+tlrc'[1]'				\
	038	GO_O		~/DATA/VIVA/VIVA038/visit1/PROC.CHANGE/stats.VIVA038+tlrc'[4]'				\
	035	CHANGE		~/DATA/VIVA/VIVA035/visit1/PROC.CHANGE/stats.VIVA035+tlrc'[7]'				\
	035	GO_X		~/DATA/VIVA/VIVA035/visit1/PROC.CHANGE/stats.VIVA035+tlrc'[1]'				\
	035	GO_O		~/DATA/VIVA/VIVA035/visit1/PROC.CHANGE/stats.VIVA035+tlrc'[4]'				\
	121	CHANGE		~/DATA/VIVA/VIVA121/visit1/PROC.CHANGE/stats.VIVA121+tlrc'[7]'				\
	121	GO_X		~/DATA/VIVA/VIVA121/visit1/PROC.CHANGE/stats.VIVA121+tlrc'[1]'				\
	121	GO_O		~/DATA/VIVA/VIVA121/visit1/PROC.CHANGE/stats.VIVA121+tlrc'[4]'				\
	031	CHANGE		~/DATA/VIVA/VIVA031/visit1/PROC.CHANGE/stats.VIVA031+tlrc'[7]'				\
	031	GO_X		~/DATA/VIVA/VIVA031/visit1/PROC.CHANGE/stats.VIVA031+tlrc'[1]'				\
	031	GO_O		~/DATA/VIVA/VIVA031/visit1/PROC.CHANGE/stats.VIVA031+tlrc'[4]'



