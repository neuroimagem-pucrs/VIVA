#! /bin/csh 

# --------------------------------------------------------------------------------------------------------------------------------------------------------
# ESTE SCRIPT PERMITE VISUALIZAR OS VALORES DE ALPHA NA ANALISE DE CLUSTER
# 
# NAO ESQUECER DE ALTERAR OS DIRETORIOS DOS ARQUIVOS
# 
# ALTERAR O x y z PELOS VALORES PRESENTES NO ARQUIVO blur.errts.1D, QUE SE ENCONTRA NA PASTA DE CADA SUJEITO
# --------------------------------------------------------------------------------------------------------------------------------------------------------

set mask_dir = ~/DATA/VIVA/VIVA106/visit1/PROC.CHANGE/mask_group+tlrc.BRIK.gz
set arquivos_dir = ~/DATA/VIVA/STATS
#set arquivo_abuso_NT = (ttest.abuso_vs_NT_7+tlrc.BRIK.gz ttest.abuso_vs_NT_19+tlrc.BRIK.gz ttest.abuso_vs_NT_27+tlrc.BRIK.gz)
#set arquivo_negligencia_NT = (ttest.negligencia_vs_NT_7+tlrc.BRIK.gz ttest.negligencia_vs_NT_19+tlrc.BRIK.gz ttest.negligencia_vs_NT_27+tlrc.BRIK.gz)


set arquivos = ( MVM_FALMEM_porParticipante+tlrc.BRIK.gz )

## -fwhmxyz CHANGE = 10.7122  11.0578  9.00659
## -fwhmxyz FALMEM = 10.6011  11.0094  8.54741
## -fwhmxyz RMET = 10.8711  11.1216  9.19368

### MVM_CHANGE+tlrc.BRIK.gz  MVM_FALMEM+tlrc.BRIK.gz MVM_RMET+tlrc.BRIK.gz  )

3dClustSim 	-fwhmxyz 10.6011  11.0094  8.54741	\
	   	-LOTS			\
	   	-iter 10000		\
		-NN 123			\
		-both			\
		-mask ${mask_dir}	\
		-prefix ClustSim


foreach arquivo ( ${arquivos} )

3drefit -atrstring AFNI_CLUSTSIM_MASK file:./ClustSim.mask                         \
        -atrstring AFNI_CLUSTSIM_NN1_1sided  file:./ClustSim.NN1_1sided.niml       \
        -atrstring AFNI_CLUSTSIM_NN2_1sided  file:./ClustSim.NN2_1sided.niml       \
        -atrstring AFNI_CLUSTSIM_NN3_1sided  file:./ClustSim.NN3_1sided.niml       \
        -atrstring AFNI_CLUSTSIM_NN1_2sided  file:./ClustSim.NN1_2sided.niml       \
        -atrstring AFNI_CLUSTSIM_NN2_2sided  file:./ClustSim.NN2_2sided.niml       \
        -atrstring AFNI_CLUSTSIM_NN3_2sided  file:./ClustSim.NN3_2sided.niml       \
        -atrstring AFNI_CLUSTSIM_NN1_bisided  file:./ClustSim.NN1_bisided.niml     \
        -atrstring AFNI_CLUSTSIM_NN2_bisided  file:./ClustSim.NN2_bisided.niml     \
        -atrstring AFNI_CLUSTSIM_NN3_bisided  file:./ClustSim.NN3_bisided.niml     \
	${arquivos_dir}/${arquivo}

end

exit
