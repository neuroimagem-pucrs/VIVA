#! /bin/csh

set radius = 8

# Here i will make the ROIS from a list
set bb = ~/DATA/SCHOOLS/SCHB009/visit2/PROC.FASTLOC/mask_group+tlrc

#new_ROIS_coord.txt
# remove previous
#rm ROI_*


3dUndump -xyz -master ${bb} -orient RPI -srad ${radius} -prefix ROI_artigo.nii ROIS_Coord.txt
#gzip -v ROI_artigo.nii


# Now get the ROIinfo for MNI space MUST FIX THIS PART!!!!
#########3dclust -mni -1clip 0.5 5.1 100  new_ROI_${d}_resampled+tlrc > ROIloc_MNI_${d}


# Now create separate files with names
set names = (LHipp RHipp)

set mask = ~/DATA/VIVA/SCRIPTS/VIVA/STATS/HaskinsPeds_NL_atlas_3x3x3+tlrc

cd ~/DATA/VIVA/SCRIPTS/VIVA/STATS/ROIS_RST

foreach indx (`count -digits 1 1 107`)


        # name the ROI
        3dcalc -fscale \
        -overwrite \
        -a ${mask} \
        -expr "equals(a,${indx})" \
        -prefix ROI_${names[${indx}]}
end
