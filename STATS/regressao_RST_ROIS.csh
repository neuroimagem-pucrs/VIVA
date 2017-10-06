#! /bin/csh

set mask_dset = HaskinsPeds_NL_template_3x3x3+tlrc
set dir = ~/DATA/VIVA
set visit = visit1

set results_dir = ~/DATA/VIVA/STATS/Correlacoes/RST
cd ${results_dir}

#######################################################################
# Cortisol x RST - LACC (Cingulo Anterior Esquerdo)
#######################################################################

3dRegAna		 								\
-rows 13 	 									\
-cols 1 	 									\
-xydata 71.70383676 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-xydata 23.40009646 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-xydata 58.00735707 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-xydata 40.82132573 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-xydata 11.99833411 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-xydata 6.86006132 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"	 	\
-xydata 32.20871924 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-xydata 20.99216904 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-xydata 78.79534813 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-xydata 32.5405125 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-xydata 29.87474174 "$dir/VIVA038/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-xydata 39.42623579 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-xydata 26.4574095 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD" 		\
#-xydata 33.3552144 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		\
-model 1 : 0 										\
-fcoef 0 Cortisol_LACC.F_constant							\
-fcoef 1 Cortisol_LACC.F_linear 							\
-tcoef 0 Cortisol_LACC.t_constant 							\
-tcoef 1 Cortisol_LACC.t_linear 							\
-rcoef 0 Cortisol_LACC.r_constant			 				\
-rcoef 1 Cortisol_LACC.r_linear 							\
-bucket 0 Cortisol_LACC.bucket

#######################################################################
# Cortisol x RST - RACC (Cingulo Anterior Direito)
#######################################################################

3dRegAna		 								\
-rows 13 	 									\
-cols 1 	 									\
-xydata 71.70383676 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-xydata 23.40009646 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-xydata 58.00735707 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-xydata 40.82132573 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-xydata 11.99833411 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-xydata 6.86006132 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"	 	\
-xydata 32.20871924 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-xydata 20.99216904 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-xydata 78.79534813 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-xydata 32.5405125 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-xydata 29.87474174 "$dir/VIVA038/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-xydata 39.42623579 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-xydata 26.4574095 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD" 		\
#-xydata 33.3552144 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		\
-model 1 : 0 										\
-fcoef 0 Cortisol_RACC.F_constant							\
-fcoef 1 Cortisol_RACC.F_linear 							\
-tcoef 0 Cortisol_RACC.t_constant 							\
-tcoef 1 Cortisol_RACC.t_linear 							\
-rcoef 0 Cortisol_RACC.r_constant			 				\
-rcoef 1 Cortisol_RACC.r_linear 							\
-bucket 0 Cortisol_RACC.bucket

#######################################################################
# Cortisol x RST - LAmig (Amigdala Esquerda)
#######################################################################

3dRegAna		 								\
-rows 13 	 									\
-cols 1 	 									\
-xydata 71.70383676 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-xydata 23.40009646 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-xydata 58.00735707 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-xydata 40.82132573 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-xydata 11.99833411 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-xydata 6.86006132 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"	 	\
-xydata 32.20871924 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-xydata 20.99216904 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-xydata 78.79534813 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-xydata 32.5405125 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-xydata 29.87474174 "$dir/VIVA038/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-xydata 39.42623579 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-xydata 26.4574095 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD" 		\
#-xydata 33.3552144 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		\
-model 1 : 0 										\
-fcoef 0 Cortisol_LAmig.F_constant							\
-fcoef 1 Cortisol_LAmig.F_linear 							\
-tcoef 0 Cortisol_LAmig.t_constant 							\
-tcoef 1 Cortisol_LAmig.t_linear 							\
-rcoef 0 Cortisol_LAmig.r_constant			 				\
-rcoef 1 Cortisol_LAmig.r_linear 							\
-bucket 0 Cortisol_LAmig.bucket

#######################################################################
# Cortisol x RST - RAmig (Amigdala Direita)
#######################################################################

3dRegAna		 								\
-rows 13 	 									\
-cols 1 	 									\
-xydata 71.70383676 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-xydata 23.40009646 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-xydata 58.00735707 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-xydata 40.82132573 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-xydata 11.99833411 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-xydata 6.86006132 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"	 	\
-xydata 32.20871924 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-xydata 20.99216904 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-xydata 78.79534813 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-xydata 32.5405125 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-xydata 29.87474174 "$dir/VIVA038/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-xydata 39.42623579 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-xydata 26.4574095 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD" 		\
#-xydata 33.3552144 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		\
-model 1 : 0 										\
-fcoef 0 Cortisol_RAmig.F_constant							\
-fcoef 1 Cortisol_RAmig.F_linear 							\
-tcoef 0 Cortisol_RAmig.t_constant 							\
-tcoef 1 Cortisol_RAmig.t_linear 							\
-rcoef 0 Cortisol_RAmig.r_constant			 				\
-rcoef 1 Cortisol_RAmig.r_linear 							\
-bucket 0 Cortisol_RAmig.bucket

#######################################################################
# Cortisol x RST - LIFG (Giro Inferior Frontral Esquerdo)
#######################################################################

3dRegAna		 								\
-rows 13 	 									\
-cols 1 	 									\
-xydata 71.70383676 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-xydata 23.40009646 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-xydata 58.00735707 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-xydata 40.82132573 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-xydata 11.99833411 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-xydata 6.86006132 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"	 	\
-xydata 32.20871924 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-xydata 20.99216904 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-xydata 78.79534813 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-xydata 32.5405125 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-xydata 29.87474174 "$dir/VIVA038/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-xydata 39.42623579 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-xydata 26.4574095 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD" 		\
#-xydata 33.3552144 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		\
-model 1 : 0 										\
-fcoef 0 Cortisol_LIFG.F_constant							\
-fcoef 1 Cortisol_LIFG.F_linear 							\
-tcoef 0 Cortisol_LIFG.t_constant 							\
-tcoef 1 Cortisol_LIFG.t_linear 							\
-rcoef 0 Cortisol_LIFG.r_constant			 				\
-rcoef 1 Cortisol_LIFG.r_linear 							\
-bucket 0 Cortisol_LIFG.bucket

#######################################################################
# Cortisol x RST - RIPL (Lobo Parietal Inferior Direito)
#######################################################################

3dRegAna		 								\
-rows 13 	 									\
-cols 1 	 									\
-xydata 71.70383676 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-xydata 23.40009646 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-xydata 58.00735707 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-xydata 40.82132573 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-xydata 11.99833411 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-xydata 6.86006132 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"	 	\
-xydata 32.20871924 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-xydata 20.99216904 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-xydata 78.79534813 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-xydata 32.5405125 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-xydata 29.87474174 "$dir/VIVA038/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-xydata 39.42623579 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-xydata 26.4574095 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD" 		\
#-xydata 33.3552144 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		\
-model 1 : 0 										\
-fcoef 0 Cortisol_RIPL.F_constant							\
-fcoef 1 Cortisol_RIPL.F_linear 							\
-tcoef 0 Cortisol_RIPL.t_constant 							\
-tcoef 1 Cortisol_RIPL.t_linear 							\
-rcoef 0 Cortisol_RIPL.r_constant			 				\
-rcoef 1 Cortisol_RIPL.r_linear 							\
-bucket 0 Cortisol_RIPL.bucket


#######################################################################
# Cortisol x RST - LHipp (Hipocampo Esquerdo)
#######################################################################

3dRegAna		 								\
-rows 13 	 									\
-cols 1 	 									\
-xydata 71.70383676 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-xydata 23.40009646 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-xydata 58.00735707 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-xydata 40.82132573 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-xydata 11.99833411 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-xydata 6.86006132 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"	 	\
-xydata 32.20871924 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-xydata 20.99216904 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-xydata 78.79534813 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-xydata 32.5405125 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-xydata 29.87474174 "$dir/VIVA038/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-xydata 39.42623579 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-xydata 26.4574095 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD" 		\
#-xydata 33.3552144 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		\
-model 1 : 0 										\
-fcoef 0 Cortisol_LHipp.F_constant							\
-fcoef 1 Cortisol_LHipp.F_linear 							\
-tcoef 0 Cortisol_LHipp.t_constant 							\
-tcoef 1 Cortisol_LHipp.t_linear 							\
-rcoef 0 Cortisol_LHipp.r_constant			 				\
-rcoef 1 Cortisol_LHipp.r_linear 							\
-bucket 0 Cortisol_LHipp.bucket

#######################################################################
# Cortisol x RST - RHipp (Hipocampo Direito)
#######################################################################

3dRegAna		 								\
-rows 13 	 									\
-cols 1 	 									\
-xydata 71.70383676 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-xydata 23.40009646 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-xydata 58.00735707 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-xydata 40.82132573 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-xydata 11.99833411 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-xydata 6.86006132 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"	 	\
-xydata 32.20871924 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-xydata 20.99216904 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-xydata 78.79534813 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-xydata 32.5405125 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-xydata 29.87474174 "$dir/VIVA038/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-xydata 39.42623579 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-xydata 26.4574095 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD" 		\
#-xydata 33.3552144 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		\
-model 1 : 0 										\
-fcoef 0 Cortisol_RHipp.F_constant							\
-fcoef 1 Cortisol_RHipp.F_linear 							\
-tcoef 0 Cortisol_RHipp.t_constant 							\
-tcoef 1 Cortisol_RHipp.t_linear 							\
-rcoef 0 Cortisol_RHipp.r_constant			 				\
-rcoef 1 Cortisol_RHipp.r_linear 							\
-bucket 0 Cortisol_RHipp.bucket


# --------------------------------------------------------------------------------------- #


#######################################################################
# JVQ x RST - LACC
#######################################################################

3dRegAna		 								\
-rows 25 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"	 		\
-xydata 14 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"	 		\
-xydata 2 "$dir/VIVA011/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"			\
-xydata 1 "$dir/VIVA016/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"			\
-xydata 6 "$dir/VIVA030/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"			\
-xydata 0 "$dir/VIVA037/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"		 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"	 		\
#-xydata 11 "$dir/VIVA106/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"	 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD" 			\
-xydata 3 "$dir/VIVA114/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD" 			\
-xydata 0 "$dir/VIVA121/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD" 			\
-xydata 6 "$dir/VIVA122/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD" 			\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD" 			\
-xydata 11 "$dir/VIVA134/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD" 			\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD" 			\
#-xydata 13 "$dir/VIVA206/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"			\
#-xydata 7 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/LACC_Z+tlrc.HEAD"			\
-model 1 : 0 										\
-fcoef 0 JVQ_LACC.F_constant								\
-fcoef 1 JVQ_LACC.F_linear 								\
-tcoef 0 JVQ_LACC.t_constant 								\
-tcoef 1 JVQ_LACC.t_linear 								\
-rcoef 0 JVQ_LACC.r_constant			 					\
-rcoef 1 JVQ_LACC.r_linear 								\
-bucket 0 JVQ_LACC.bucket


#######################################################################
# JVQ x RST - RACC
#######################################################################

3dRegAna		 								\
-rows 25 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"	 		\
-xydata 14 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"	 		\
-xydata 2 "$dir/VIVA011/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"			\
-xydata 1 "$dir/VIVA016/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"			\
-xydata 6 "$dir/VIVA030/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"			\
-xydata 0 "$dir/VIVA037/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"		 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"	 		\
#-xydata 11 "$dir/VIVA106/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"	 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD" 			\
-xydata 3 "$dir/VIVA114/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD" 			\
-xydata 0 "$dir/VIVA121/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD" 			\
-xydata 6 "$dir/VIVA122/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD" 			\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD" 			\
-xydata 11 "$dir/VIVA134/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD" 			\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD" 			\
#-xydata 13 "$dir/VIVA206/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"			\
#-xydata 7 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/RACC_Z+tlrc.HEAD"			\
-model 1 : 0 										\
-fcoef 0 JVQ_RACC.F_constant								\
-fcoef 1 JVQ_RACC.F_linear 								\
-tcoef 0 JVQ_RACC.t_constant 								\
-tcoef 1 JVQ_RACC.t_linear 								\
-rcoef 0 JVQ_RACC.r_constant			 					\
-rcoef 1 JVQ_RACC.r_linear 								\
-bucket 0 JVQ_RACC.bucket


#######################################################################
# JVQ x RST - LAmig
#######################################################################

3dRegAna		 								\
-rows 25 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"	 		\
-xydata 14 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"	 		\
-xydata 2 "$dir/VIVA011/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"			\
-xydata 1 "$dir/VIVA016/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"			\
-xydata 6 "$dir/VIVA030/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"			\
-xydata 0 "$dir/VIVA037/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"		 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"	 		\
#-xydata 11 "$dir/VIVA106/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"	 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD" 			\
-xydata 3 "$dir/VIVA114/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD" 			\
-xydata 0 "$dir/VIVA121/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD" 			\
-xydata 6 "$dir/VIVA122/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD" 			\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD" 			\
-xydata 11 "$dir/VIVA134/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD" 			\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD" 			\
#-xydata 13 "$dir/VIVA206/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"			\
#-xydata 7 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/LAmig_Z+tlrc.HEAD"			\
-model 1 : 0 										\
-fcoef 0 JVQ_LAmig.F_constant								\
-fcoef 1 JVQ_LAmig.F_linear 								\
-tcoef 0 JVQ_LAmig.t_constant 								\
-tcoef 1 JVQ_LAmig.t_linear 								\
-rcoef 0 JVQ_LAmig.r_constant			 					\
-rcoef 1 JVQ_LAmig.r_linear 								\
-bucket 0 JVQ_LAmig.bucket


#######################################################################
# JVQ x RST - RAmig
#######################################################################

3dRegAna		 								\
-rows 25 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"	 		\
-xydata 14 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"	 		\
-xydata 2 "$dir/VIVA011/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"			\
-xydata 1 "$dir/VIVA016/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"			\
-xydata 6 "$dir/VIVA030/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"			\
-xydata 0 "$dir/VIVA037/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"		 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"	 		\
#-xydata 11 "$dir/VIVA106/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"	 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD" 			\
-xydata 3 "$dir/VIVA114/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD" 			\
-xydata 0 "$dir/VIVA121/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD" 			\
-xydata 6 "$dir/VIVA122/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD" 			\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD" 			\
-xydata 11 "$dir/VIVA134/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD" 			\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD" 			\
#-xydata 13 "$dir/VIVA206/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"			\
#-xydata 7 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/RAmig_Z+tlrc.HEAD"			\
-model 1 : 0 										\
-fcoef 0 JVQ_RAmig.F_constant								\
-fcoef 1 JVQ_RAmig.F_linear 								\
-tcoef 0 JVQ_RAmig.t_constant 								\
-tcoef 1 JVQ_RAmig.t_linear 								\
-rcoef 0 JVQ_RAmig.r_constant			 					\
-rcoef 1 JVQ_RAmig.r_linear 								\
-bucket 0 JVQ_RAmig.bucket


#######################################################################
# JVQ x RST - LIFG
#######################################################################

3dRegAna		 								\
-rows 25 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"	 		\
-xydata 14 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"	 		\
-xydata 2 "$dir/VIVA011/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"			\
-xydata 1 "$dir/VIVA016/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"			\
-xydata 6 "$dir/VIVA030/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"			\
-xydata 0 "$dir/VIVA037/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"		 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"	 		\
#-xydata 11 "$dir/VIVA106/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"	 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD" 			\
-xydata 3 "$dir/VIVA114/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD" 			\
-xydata 0 "$dir/VIVA121/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD" 			\
-xydata 6 "$dir/VIVA122/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD" 			\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD" 			\
-xydata 11 "$dir/VIVA134/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD" 			\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD" 			\
#-xydata 13 "$dir/VIVA206/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"			\
#-xydata 7 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/LIFG_Z+tlrc.HEAD"			\
-model 1 : 0 										\
-fcoef 0 JVQ_LIFG.F_constant								\
-fcoef 1 JVQ_LIFG.F_linear 								\
-tcoef 0 JVQ_LIFG.t_constant 								\
-tcoef 1 JVQ_LIFG.t_linear 								\
-rcoef 0 JVQ_LIFG.r_constant			 					\
-rcoef 1 JVQ_LIFG.r_linear 								\
-bucket 0 JVQ_LIFG.bucket


#######################################################################
# JVQ x RST - RIPL
#######################################################################

3dRegAna		 								\
-rows 25 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"	 		\
-xydata 14 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"	 		\
-xydata 2 "$dir/VIVA011/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"			\
-xydata 1 "$dir/VIVA016/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"			\
-xydata 6 "$dir/VIVA030/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"			\
-xydata 0 "$dir/VIVA037/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"		 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"	 		\
#-xydata 11 "$dir/VIVA106/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"	 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD" 			\
-xydata 3 "$dir/VIVA114/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD" 			\
-xydata 0 "$dir/VIVA121/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD" 			\
-xydata 6 "$dir/VIVA122/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD" 			\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD" 			\
-xydata 11 "$dir/VIVA134/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD" 			\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD" 			\
#-xydata 13 "$dir/VIVA206/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"			\
#-xydata 7 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/RIPL_Z+tlrc.HEAD"			\
-model 1 : 0 										\
-fcoef 0 JVQ_RIPL.F_constant								\
-fcoef 1 JVQ_RIPL.F_linear 								\
-tcoef 0 JVQ_RIPL.t_constant 								\
-tcoef 1 JVQ_RIPL.t_linear 								\
-rcoef 0 JVQ_RIPL.r_constant			 					\
-rcoef 1 JVQ_RIPL.r_linear 								\
-bucket 0 JVQ_RIPL.bucket


#######################################################################
# JVQ x RST - LHipp
#######################################################################

3dRegAna		 								\
-rows 25 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"	 		\
-xydata 14 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"	 		\
-xydata 2 "$dir/VIVA011/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"			\
-xydata 1 "$dir/VIVA016/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"			\
-xydata 6 "$dir/VIVA030/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"			\
-xydata 0 "$dir/VIVA037/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"		 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"	 		\
#-xydata 11 "$dir/VIVA106/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"	 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD" 			\
-xydata 3 "$dir/VIVA114/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD" 			\
-xydata 0 "$dir/VIVA121/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD" 			\
-xydata 6 "$dir/VIVA122/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD" 			\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD" 			\
-xydata 11 "$dir/VIVA134/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD" 			\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD" 			\
#-xydata 13 "$dir/VIVA206/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"			\
#-xydata 7 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/LHipp_Z+tlrc.HEAD"			\
-model 1 : 0 										\
-fcoef 0 JVQ_LHipp.F_constant								\
-fcoef 1 JVQ_LHipp.F_linear 								\
-tcoef 0 JVQ_LHipp.t_constant 								\
-tcoef 1 JVQ_LHipp.t_linear 								\
-rcoef 0 JVQ_LHipp.r_constant			 					\
-rcoef 1 JVQ_LHipp.r_linear 								\
-bucket 0 JVQ_LHipp.bucket


#######################################################################
# JVQ x RST - RHipp
#######################################################################

3dRegAna		 								\
-rows 25 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"	 		\
-xydata 14 "$dir/VIVA004/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA005/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"	 		\
-xydata 6 "$dir/VIVA010/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"	 		\
-xydata 2 "$dir/VIVA011/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"			\
-xydata 1 "$dir/VIVA016/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"			\
-xydata 6 "$dir/VIVA030/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"			\
-xydata 0 "$dir/VIVA037/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"		 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"	 		\
#-xydata 11 "$dir/VIVA106/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"	 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD" 			\
-xydata 3 "$dir/VIVA114/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD" 			\
-xydata 0 "$dir/VIVA121/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD" 			\
-xydata 6 "$dir/VIVA122/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD" 			\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD" 			\
-xydata 11 "$dir/VIVA134/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD" 			\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD" 			\
#-xydata 13 "$dir/VIVA206/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"			\
#-xydata 7 "$dir/VIVA207/${visit}/PROC.RST.NL/RSFC/RHipp_Z+tlrc.HEAD"			\
-model 1 : 0 										\
-fcoef 0 JVQ_RHipp.F_constant								\
-fcoef 1 JVQ_RHipp.F_linear 								\
-tcoef 0 JVQ_RHipp.t_constant 								\
-tcoef 1 JVQ_RHipp.t_linear 								\
-rcoef 0 JVQ_RHipp.r_constant			 					\
-rcoef 1 JVQ_RHipp.r_linear 								\
-bucket 0 JVQ_RHipp.bucket

exit

# -------------------------------------------------------------------------------------------- #


set results_dir = ~/DATA/VIVA/STATS/Correlacoes/CHANGE
cd ${results_dir}

#######################################################################
# JVQ x Change (todas as condições)
#######################################################################

3dRegAna		 								\
-rows 27 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA002+tlrc.HEAD"	 	\
-xydata 14 "$dir/VIVA004/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA004+tlrc.HEAD"	 	\
-xydata 6 "$dir/VIVA005/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA005+tlrc.HEAD"	 	\
-xydata 6 "$dir/VIVA010/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA010+tlrc.HEAD"	 	\
-xydata 2 "$dir/VIVA011/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA011+tlrc.HEAD"	 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA012+tlrc.HEAD"	 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA013+tlrc.HEAD"	 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA014+tlrc.HEAD"	 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA015+tlrc.HEAD"		\
-xydata 1 "$dir/VIVA016/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA016+tlrc.HEAD"	 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA020+tlrc.HEAD"	 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA023+tlrc.HEAD"	 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA027+tlrc.HEAD"		\
-xydata 6 "$dir/VIVA030/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA030+tlrc.HEAD"	 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA031+tlrc.HEAD"	 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA035+tlrc.HEAD"	 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA036+tlrc.HEAD"		\
-xydata 0 "$dir/VIVA037/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA037+tlrc.HEAD"	 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA043+tlrc.HEAD"	 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA044+tlrc.HEAD"	 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA105+tlrc.HEAD" 		\
-xydata 11 "$dir/VIVA106/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA106+tlrc.HEAD" 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA108+tlrc.HEAD" 		\
#-xydata 3 "$dir/VIVA114/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA114+tlrc.HEAD" 		\
-xydata 0 "$dir/VIVA121/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA121+tlrc.HEAD" 		\
-xydata 6 "$dir/VIVA122/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA122+tlrc.HEAD" 		\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA123+tlrc.HEAD" 		\
-xydata 11 "$dir/VIVA134/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA134+tlrc.HEAD" 		\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA136+tlrc.HEAD" 		\
-xydata 13 "$dir/VIVA206/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA206+tlrc.HEAD"		\
-xydata 7 "$dir/VIVA207/${visit}/PROC.CHANGE/stats.ALLcoef.VIVA207+tlrc.HEAD"		\
-model 1 : 0 										\
-fcoef 0 JVQ_all.F_constant								\
-fcoef 1 JVQ_all.F_linear 								\
-tcoef 0 JVQ_all.t_constant 								\
-tcoef 1 JVQ_all.t_linear 								\
-rcoef 0 JVQ_all.r_constant								\
-rcoef 1 JVQ_all.r_linear 								\
-bucket 0 JVQ_all.bucket


#######################################################################
# JVQ x Change - goX
#######################################################################

3dRegAna		 								\
-rows 27 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.CHANGE/stats.VIVA002+tlrc.HEAD[1]"	 	\
-xydata 14 "$dir/VIVA004/${visit}/PROC.CHANGE/stats.VIVA004+tlrc.HEAD[1]"	 	\
-xydata 6 "$dir/VIVA005/${visit}/PROC.CHANGE/stats.VIVA005+tlrc.HEAD[1]"	 	\
-xydata 6 "$dir/VIVA010/${visit}/PROC.CHANGE/stats.VIVA010+tlrc.HEAD[1]"	 	\
-xydata 2 "$dir/VIVA011/${visit}/PROC.CHANGE/stats.VIVA011+tlrc.HEAD[1]"	 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.CHANGE/stats.VIVA012+tlrc.HEAD[1]"	 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.CHANGE/stats.VIVA013+tlrc.HEAD[1]"	 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.CHANGE/stats.VIVA014+tlrc.HEAD[1]"	 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.CHANGE/stats.VIVA015+tlrc.HEAD[1]"		\
-xydata 1 "$dir/VIVA016/${visit}/PROC.CHANGE/stats.VIVA016+tlrc.HEAD[1]"	 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.CHANGE/stats.VIVA020+tlrc.HEAD[1]"	 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.CHANGE/stats.VIVA023+tlrc.HEAD[1]"	 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.CHANGE/stats.VIVA027+tlrc.HEAD[1]"		\
-xydata 6 "$dir/VIVA030/${visit}/PROC.CHANGE/stats.VIVA030+tlrc.HEAD[1]"	 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.CHANGE/stats.VIVA031+tlrc.HEAD[1]"	 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.CHANGE/stats.VIVA035+tlrc.HEAD[1]"	 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.CHANGE/stats.VIVA036+tlrc.HEAD[1]"		\
-xydata 0 "$dir/VIVA037/${visit}/PROC.CHANGE/stats.VIVA037+tlrc.HEAD[1]"	 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.CHANGE/stats.VIVA043+tlrc.HEAD[1]"	 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.CHANGE/stats.VIVA044+tlrc.HEAD[1]"	 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.CHANGE/stats.VIVA105+tlrc.HEAD[1]" 		\
-xydata 11 "$dir/VIVA106/${visit}/PROC.CHANGE/stats.VIVA106+tlrc.HEAD[1]" 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.CHANGE/stats.VIVA108+tlrc.HEAD[1]" 		\
#-xydata 3 "$dir/VIVA114/${visit}/PROC.CHANGE/stats.VIVA114+tlrc.HEAD[1]" 		\
-xydata 0 "$dir/VIVA121/${visit}/PROC.CHANGE/stats.VIVA121+tlrc.HEAD[1]" 		\
-xydata 6 "$dir/VIVA122/${visit}/PROC.CHANGE/stats.VIVA122+tlrc.HEAD[1]" 		\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.CHANGE/stats.VIVA123+tlrc.HEAD[1]" 		\
-xydata 11 "$dir/VIVA134/${visit}/PROC.CHANGE/stats.VIVA134+tlrc.HEAD[1]" 		\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.CHANGE/stats.VIVA136+tlrc.HEAD[1]" 		\
-xydata 13 "$dir/VIVA206/${visit}/PROC.CHANGE/stats.VIVA206+tlrc.HEAD[1]"		\
-xydata 7 "$dir/VIVA207/${visit}/PROC.CHANGE/stats.VIVA207+tlrc.HEAD[1]"		\
-model 1 : 0 										\
-fcoef 0 JVQ_GoX.F_constant								\
-fcoef 1 JVQ_GoX.F_linear 								\
-tcoef 0 JVQ_GoX.t_constant 								\
-tcoef 1 JVQ_GoX.t_linear 								\
-rcoef 0 JVQ_GoX.r_constant			 					\
-rcoef 1 JVQ_GoX.r_linear 								\
-bucket 0 JVQ_GoX.bucket

#######################################################################
# JVQ x Change - go0
#######################################################################

3dRegAna		 								\
-rows 27 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.CHANGE/stats.VIVA002+tlrc.HEAD[4]"	 	\
-xydata 14 "$dir/VIVA004/${visit}/PROC.CHANGE/stats.VIVA004+tlrc.HEAD[4]"	 	\
-xydata 6 "$dir/VIVA005/${visit}/PROC.CHANGE/stats.VIVA005+tlrc.HEAD[4]"	 	\
-xydata 6 "$dir/VIVA010/${visit}/PROC.CHANGE/stats.VIVA010+tlrc.HEAD[4]"	 	\
-xydata 2 "$dir/VIVA011/${visit}/PROC.CHANGE/stats.VIVA011+tlrc.HEAD[4]"	 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.CHANGE/stats.VIVA012+tlrc.HEAD[4]"	 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.CHANGE/stats.VIVA013+tlrc.HEAD[4]"	 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.CHANGE/stats.VIVA014+tlrc.HEAD[4]"	 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.CHANGE/stats.VIVA015+tlrc.HEAD[4]"		\
-xydata 1 "$dir/VIVA016/${visit}/PROC.CHANGE/stats.VIVA016+tlrc.HEAD[4]"	 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.CHANGE/stats.VIVA020+tlrc.HEAD[4]"	 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.CHANGE/stats.VIVA023+tlrc.HEAD[4]"	 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.CHANGE/stats.VIVA027+tlrc.HEAD[4]"		\
-xydata 6 "$dir/VIVA030/${visit}/PROC.CHANGE/stats.VIVA030+tlrc.HEAD[4]"	 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.CHANGE/stats.VIVA031+tlrc.HEAD[4]"	 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.CHANGE/stats.VIVA035+tlrc.HEAD[4]"	 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.CHANGE/stats.VIVA036+tlrc.HEAD[4]"		\
-xydata 0 "$dir/VIVA037/${visit}/PROC.CHANGE/stats.VIVA037+tlrc.HEAD[4]"	 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.CHANGE/stats.VIVA043+tlrc.HEAD[4]"	 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.CHANGE/stats.VIVA044+tlrc.HEAD[4]"	 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.CHANGE/stats.VIVA105+tlrc.HEAD[4]" 		\
-xydata 11 "$dir/VIVA106/${visit}/PROC.CHANGE/stats.VIVA106+tlrc.HEAD[4]" 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.CHANGE/stats.VIVA108+tlrc.HEAD[4]" 		\
#-xydata 3 "$dir/VIVA114/${visit}/PROC.CHANGE/stats.VIVA114+tlrc.HEAD[4]" 		\
-xydata 0 "$dir/VIVA121/${visit}/PROC.CHANGE/stats.VIVA121+tlrc.HEAD[4]" 		\
-xydata 6 "$dir/VIVA122/${visit}/PROC.CHANGE/stats.VIVA122+tlrc.HEAD[4]" 		\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.CHANGE/stats.VIVA123+tlrc.HEAD[4]" 		\
-xydata 11 "$dir/VIVA134/${visit}/PROC.CHANGE/stats.VIVA134+tlrc.HEAD[4]" 		\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.CHANGE/stats.VIVA136+tlrc.HEAD[4]" 		\
-xydata 13 "$dir/VIVA206/${visit}/PROC.CHANGE/stats.VIVA206+tlrc.HEAD[4]"		\
-xydata 7 "$dir/VIVA207/${visit}/PROC.CHANGE/stats.VIVA207+tlrc.HEAD[4]"		\
-model 1 : 0 										\
-fcoef 0 JVQ_Go0.F_constant								\
-fcoef 1 JVQ_Go0.F_linear 								\
-tcoef 0 JVQ_Go0.t_constant 								\
-tcoef 1 JVQ_Go0.t_linear 								\
-rcoef 0 JVQ_Go0.r_constant			 					\
-rcoef 1 JVQ_Go0.r_linear 								\
-bucket 0 JVQ_Go0.bucket

#######################################################################
# JVQ x Change - Change
#######################################################################

3dRegAna		 								\
-rows 27 	 									\
-cols 1 	 									\
-xydata 2 "$dir/VIVA002/${visit}/PROC.CHANGE/stats.VIVA002+tlrc.HEAD[7]"	 	\
-xydata 14 "$dir/VIVA004/${visit}/PROC.CHANGE/stats.VIVA004+tlrc.HEAD[7]"	 	\
-xydata 6 "$dir/VIVA005/${visit}/PROC.CHANGE/stats.VIVA005+tlrc.HEAD[7]"	 	\
-xydata 6 "$dir/VIVA010/${visit}/PROC.CHANGE/stats.VIVA010+tlrc.HEAD[7]"	 	\
-xydata 2 "$dir/VIVA011/${visit}/PROC.CHANGE/stats.VIVA011+tlrc.HEAD[7]"	 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.CHANGE/stats.VIVA012+tlrc.HEAD[7]"	 	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.CHANGE/stats.VIVA013+tlrc.HEAD[7]"	 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.CHANGE/stats.VIVA014+tlrc.HEAD[7]"	 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.CHANGE/stats.VIVA015+tlrc.HEAD[7]"		\
-xydata 1 "$dir/VIVA016/${visit}/PROC.CHANGE/stats.VIVA016+tlrc.HEAD[7]"	 	\
-xydata 3 "$dir/VIVA020/${visit}/PROC.CHANGE/stats.VIVA020+tlrc.HEAD[7]"	 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.CHANGE/stats.VIVA023+tlrc.HEAD[7]"	 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.CHANGE/stats.VIVA027+tlrc.HEAD[7]"		\
-xydata 6 "$dir/VIVA030/${visit}/PROC.CHANGE/stats.VIVA030+tlrc.HEAD[7]"	 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.CHANGE/stats.VIVA031+tlrc.HEAD[7]"	 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.CHANGE/stats.VIVA035+tlrc.HEAD[7]"	 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.CHANGE/stats.VIVA036+tlrc.HEAD[7]"		\
-xydata 0 "$dir/VIVA037/${visit}/PROC.CHANGE/stats.VIVA037+tlrc.HEAD[7]"	 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.CHANGE/stats.VIVA043+tlrc.HEAD[7]"	 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.CHANGE/stats.VIVA044+tlrc.HEAD[7]"	 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.CHANGE/stats.VIVA105+tlrc.HEAD[7]" 		\
-xydata 11 "$dir/VIVA106/${visit}/PROC.CHANGE/stats.VIVA106+tlrc.HEAD[7]" 		\
-xydata 8 "$dir/VIVA108/${visit}/PROC.CHANGE/stats.VIVA108+tlrc.HEAD[7]" 		\
#-xydata 3 "$dir/VIVA114/${visit}/PROC.CHANGE/stats.VIVA114+tlrc.HEAD[7]" 		\
-xydata 0 "$dir/VIVA121/${visit}/PROC.CHANGE/stats.VIVA121+tlrc.HEAD[7]" 		\
-xydata 6 "$dir/VIVA122/${visit}/PROC.CHANGE/stats.VIVA122+tlrc.HEAD[7]" 		\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.CHANGE/stats.VIVA123+tlrc.HEAD[7]" 		\
-xydata 11 "$dir/VIVA134/${visit}/PROC.CHANGE/stats.VIVA134+tlrc.HEAD[7]" 		\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.CHANGE/stats.VIVA136+tlrc.HEAD[7]" 		\
-xydata 13 "$dir/VIVA206/${visit}/PROC.CHANGE/stats.VIVA206+tlrc.HEAD[7]"		\
-xydata 7 "$dir/VIVA207/${visit}/PROC.CHANGE/stats.VIVA207+tlrc.HEAD[7]"		\
-model 1 : 0 										\
-fcoef 0 JVQ_change.F_constant								\
-fcoef 1 JVQ_change.F_linear 								\
-tcoef 0 JVQ_change.t_constant 								\
-tcoef 1 JVQ_change.t_linear 								\
-rcoef 0 JVQ_change.r_constant			 					\
-rcoef 1 JVQ_change.r_linear 								\
-bucket 0 JVQ_change.bucket



set results_dir = ~/DATA/VIVA/STATS/Correlacoes/RMET
cd ${results_dir}

#######################################################################
# JVQ x Emoção (ee_vs_base - RMET)
#######################################################################

3dRegAna		 							\
-rows 25 	 								\
-cols 1 	 								\
-xydata 2 "$dir/VIVA002/${visit}/PROC.RMET/stats.VIVA002+tlrc.HEAD[16]"	 	\
-xydata 14 "$dir/VIVA004/${visit}/PROC.RMET/stats.VIVA004+tlrc.HEAD[16]"	\
-xydata 6 "$dir/VIVA005/${visit}/PROC.RMET/stats.VIVA005+tlrc.HEAD[16]"	 	\
-xydata 6 "$dir/VIVA010/${visit}/PROC.RMET/stats.VIVA010+tlrc.HEAD[16]"	 	\
-xydata 2 "$dir/VIVA011/${visit}/PROC.RMET/stats.VIVA011+tlrc.HEAD[16]"	 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.RMET/stats.VIVA012+tlrc.HEAD[16]"	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.RMET/stats.VIVA013+tlrc.HEAD[16]"	 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.RMET/stats.VIVA014+tlrc.HEAD[16]"	 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.RMET/stats.VIVA015+tlrc.HEAD[16]"		\
-xydata 1 "$dir/VIVA016/${visit}/PROC.RMET/stats.VIVA016+tlrc.HEAD[16]"	 	\
#-xydata 3 "$dir/VIVA020/${visit}/PROC.RMET/stats.VIVA020+tlrc.HEAD[16]"	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.RMET/stats.VIVA023+tlrc.HEAD[16]"	 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.RMET/stats.VIVA027+tlrc.HEAD[16]"		\
-xydata 6 "$dir/VIVA030/${visit}/PROC.RMET/stats.VIVA030+tlrc.HEAD[16]"	 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.RMET/stats.VIVA031+tlrc.HEAD[16]"	 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.RMET/stats.VIVA035+tlrc.HEAD[16]"	 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.RMET/stats.VIVA036+tlrc.HEAD[16]"		\
-xydata 0 "$dir/VIVA037/${visit}/PROC.RMET/stats.VIVA037+tlrc.HEAD[16]"	 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.RMET/stats.VIVA043+tlrc.HEAD[16]"	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.RMET/stats.VIVA044+tlrc.HEAD[16]"	 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.RMET/stats.VIVA105+tlrc.HEAD[16]" 	\
-xydata 11 "$dir/VIVA106/${visit}/PROC.RMET/stats.VIVA106+tlrc.HEAD[16]" 	\
#-xydata 8 "$dir/VIVA108/${visit}/PROC.RMET/stats.VIVA108+tlrc.HEAD[16]" 	\
-xydata 3 "$dir/VIVA114/${visit}/PROC.RMET/stats.VIVA114+tlrc.HEAD[16]" 	\
-xydata 0 "$dir/VIVA121/${visit}/PROC.RMET/stats.VIVA121+tlrc.HEAD[16]" 	\
-xydata 6 "$dir/VIVA122/${visit}/PROC.RMET/stats.VIVA122+tlrc.HEAD[16]" 	\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.RMET/stats.VIVA123+tlrc.HEAD[16]" 	\
-xydata 11 "$dir/VIVA134/${visit}/PROC.RMET/stats.VIVA134+tlrc.HEAD[16]" 	\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.RMET/stats.VIVA136+tlrc.HEAD[16]" 	\
-xydata 13 "$dir/VIVA206/${visit}/PROC.RMET/stats.VIVA206+tlrc.HEAD[16]"	\
#-xydata 7 "$dir/VIVA207/${visit}/PROC.RMET/stats.VIVA207+tlrc.HEAD[16]"	\
-model 1 : 0 									\
-fcoef 0 JVQ_Emocao.F_constant							\
-fcoef 1 JVQ_Emocao.F_linear 							\
-tcoef 0 JVQ_Emocao.t_constant 							\
-tcoef 1 JVQ_Emocao.t_linear 							\
-rcoef 0 JVQ_Emocao.r_constant			 				\
-rcoef 1 JVQ_Emocao.r_linear 							\
-bucket 0 JVQ_Emocao.bucket


#######################################################################
# JVQ x Sexo (es_vs_base - RMET)
#######################################################################

3dRegAna		 							\
-rows 25 	 								\
-cols 1 	 								\
-xydata 2 "$dir/VIVA002/${visit}/PROC.RMET/stats.VIVA002+tlrc.HEAD[19]"	 	\
-xydata 14 "$dir/VIVA004/${visit}/PROC.RMET/stats.VIVA004+tlrc.HEAD[19]"	\
-xydata 6 "$dir/VIVA005/${visit}/PROC.RMET/stats.VIVA005+tlrc.HEAD[19]"	 	\
-xydata 6 "$dir/VIVA010/${visit}/PROC.RMET/stats.VIVA010+tlrc.HEAD[19]"	 	\
-xydata 2 "$dir/VIVA011/${visit}/PROC.RMET/stats.VIVA011+tlrc.HEAD[19]"	 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.RMET/stats.VIVA012+tlrc.HEAD[19]"	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.RMET/stats.VIVA013+tlrc.HEAD[19]"	 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.RMET/stats.VIVA014+tlrc.HEAD[19]"	 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.RMET/stats.VIVA015+tlrc.HEAD[19]"		\
-xydata 1 "$dir/VIVA016/${visit}/PROC.RMET/stats.VIVA016+tlrc.HEAD[19]"	 	\
#-xydata 3 "$dir/VIVA020/${visit}/PROC.RMET/stats.VIVA020+tlrc.HEAD[19]" 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.RMET/stats.VIVA023+tlrc.HEAD[19]"	 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.RMET/stats.VIVA027+tlrc.HEAD[19]"		\
-xydata 6 "$dir/VIVA030/${visit}/PROC.RMET/stats.VIVA030+tlrc.HEAD[19]"	 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.RMET/stats.VIVA031+tlrc.HEAD[19]"	 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.RMET/stats.VIVA035+tlrc.HEAD[19]"	 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.RMET/stats.VIVA036+tlrc.HEAD[19]"		\
-xydata 0 "$dir/VIVA037/${visit}/PROC.RMET/stats.VIVA037+tlrc.HEAD[19]"	 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.RMET/stats.VIVA043+tlrc.HEAD[19]" 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.RMET/stats.VIVA044+tlrc.HEAD[19]"	 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.RMET/stats.VIVA105+tlrc.HEAD[19]" 	\
-xydata 11 "$dir/VIVA106/${visit}/PROC.RMET/stats.VIVA106+tlrc.HEAD[19]" 	\
#-xydata 8 "$dir/VIVA108/${visit}/PROC.RMET/stats.VIVA108+tlrc.HEAD[19]" 	\
-xydata 3 "$dir/VIVA114/${visit}/PROC.RMET/stats.VIVA114+tlrc.HEAD[19]" 	\
-xydata 0 "$dir/VIVA121/${visit}/PROC.RMET/stats.VIVA121+tlrc.HEAD[19]" 	\
-xydata 6 "$dir/VIVA122/${visit}/PROC.RMET/stats.VIVA122+tlrc.HEAD[19]" 	\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.RMET/stats.VIVA123+tlrc.HEAD[19]" 	\
-xydata 11 "$dir/VIVA134/${visit}/PROC.RMET/stats.VIVA134+tlrc.HEAD[19]" 	\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.RMET/stats.VIVA136+tlrc.HEAD[19]" 	\
-xydata 13 "$dir/VIVA206/${visit}/PROC.RMET/stats.VIVA206+tlrc.HEAD[19]"	\
#-xydata 7 "$dir/VIVA207/${visit}/PROC.RMET/stats.VIVA207+tlrc.HEAD[19]"	\
-model 1 : 0 									\
-fcoef 0 JVQ_Sexo.F_constant							\
-fcoef 1 JVQ_Sexo.F_linear 							\
-tcoef 0 JVQ_Sexo.t_constant 							\
-tcoef 1 JVQ_Sexo.t_linear 							\
-rcoef 0 JVQ_Sexo.r_constant			 				\
-rcoef 1 JVQ_Sexo.r_linear 							\
-bucket 0 JVQ_Sexo.bucket

#######################################################################
# JVQ x Emocao x Sexo (ee_vs_es - RMET)
#######################################################################

3dRegAna		 							\
-rows 25 	 								\
-cols 1 	 								\
-xydata 2 "$dir/VIVA002/${visit}/PROC.RMET/stats.VIVA002+tlrc.HEAD[28]"	 	\
-xydata 14 "$dir/VIVA004/${visit}/PROC.RMET/stats.VIVA004+tlrc.HEAD[28]"	\
-xydata 6 "$dir/VIVA005/${visit}/PROC.RMET/stats.VIVA005+tlrc.HEAD[28]"	 	\
-xydata 6 "$dir/VIVA010/${visit}/PROC.RMET/stats.VIVA010+tlrc.HEAD[28]"	 	\
-xydata 2 "$dir/VIVA011/${visit}/PROC.RMET/stats.VIVA011+tlrc.HEAD[28]"	 	\
#-xydata 5 "$dir/VIVA012/${visit}/PROC.RMET/stats.VIVA012+tlrc.HEAD[28]"	\
-xydata 2 "$dir/VIVA013/${visit}/PROC.RMET/stats.VIVA013+tlrc.HEAD[28]"	 	\
-xydata 5 "$dir/VIVA014/${visit}/PROC.RMET/stats.VIVA014+tlrc.HEAD[28]"	 	\
-xydata 3 "$dir/VIVA015/${visit}/PROC.RMET/stats.VIVA015+tlrc.HEAD[28]"		\
-xydata 1 "$dir/VIVA016/${visit}/PROC.RMET/stats.VIVA016+tlrc.HEAD[28]"	 	\
#-xydata 3 "$dir/VIVA020/${visit}/PROC.RMET/stats.VIVA020+tlrc.HEAD[28]" 	\
-xydata 4 "$dir/VIVA023/${visit}/PROC.RMET/stats.VIVA023+tlrc.HEAD[28]"	 	\
-xydata 2 "$dir/VIVA027/${visit}/PROC.RMET/stats.VIVA027+tlrc.HEAD[28]"		\
-xydata 6 "$dir/VIVA030/${visit}/PROC.RMET/stats.VIVA030+tlrc.HEAD[28]"	 	\
-xydata 2 "$dir/VIVA031/${visit}/PROC.RMET/stats.VIVA031+tlrc.HEAD[28]"	 	\
-xydata 4 "$dir/VIVA035/${visit}/PROC.RMET/stats.VIVA035+tlrc.HEAD[28]"	 	\
-xydata 0 "$dir/VIVA036/${visit}/PROC.RMET/stats.VIVA036+tlrc.HEAD[28]"		\
-xydata 0 "$dir/VIVA037/${visit}/PROC.RMET/stats.VIVA037+tlrc.HEAD[28]"	 	\
-xydata 20 "$dir/VIVA043/${visit}/PROC.RMET/stats.VIVA043+tlrc.HEAD[28]" 	\
-xydata 2 "$dir/VIVA044/${visit}/PROC.RMET/stats.VIVA044+tlrc.HEAD[28]"	 	\
-xydata 1 "$dir/VIVA105/${visit}/PROC.RMET/stats.VIVA105+tlrc.HEAD[28]" 	\
-xydata 11 "$dir/VIVA106/${visit}/PROC.RMET/stats.VIVA106+tlrc.HEAD[28]" 	\
#-xydata 8 "$dir/VIVA108/${visit}/PROC.RMET/stats.VIVA108+tlrc.HEAD[28]" 	\
-xydata 3 "$dir/VIVA114/${visit}/PROC.RMET/stats.VIVA114+tlrc.HEAD[28]" 	\
-xydata 0 "$dir/VIVA121/${visit}/PROC.RMET/stats.VIVA121+tlrc.HEAD[28]" 	\
-xydata 6 "$dir/VIVA122/${visit}/PROC.RMET/stats.VIVA122+tlrc.HEAD[28]" 	\
#-xydata 1 "$dir/VIVA123/${visit}/PROC.RMET/stats.VIVA123+tlrc.HEAD[28]" 	\
-xydata 11 "$dir/VIVA134/${visit}/PROC.RMET/stats.VIVA134+tlrc.HEAD[28]" 	\
#-xydata 0 "$dir/VIVA136/${visit}/PROC.RMET/stats.VIVA136+tlrc.HEAD[28]" 	\
-xydata 13 "$dir/VIVA206/${visit}/PROC.RMET/stats.VIVA206+tlrc.HEAD[28]"	\
#-xydata 7 "$dir/VIVA207/${visit}/PROC.RMET/stats.VIVA207+tlrc.HEAD[28]"	\
-model 1 : 0 									\
-fcoef 0 JVQ_Emo_vs_Sexo.F_constant						\
-fcoef 1 JVQ_Emo_vs_Sexo.F_linear 						\
-tcoef 0 JVQ_Emo_vs_Sexo.t_constant 						\
-tcoef 1 JVQ_Emo_vs_Sexo.t_linear 						\
-rcoef 0 JVQ_Emo_vs_Sexo.r_constant		 				\
-rcoef 1 JVQ_Emo_vs_Sexo.r_linear 						\
-bucket 0 JVQ_Emo_vs_Sexo.bucket
