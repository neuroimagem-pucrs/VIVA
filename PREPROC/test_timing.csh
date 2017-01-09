#! /bin/csh

#  Here we will test the timing of the acerta kits
# Evaluate the experimental design

#total timing is 461 seconds

3dDeconvolve -nodata 231 2.0 					                        \
#-concat '1D: 0 320' \
-polort 2 \
-x1D_stop \
    -num_stimts 3                                                        \
    -stim_times 1 timing/pergunta.1D 'BLOCK(4,1)'              \
    -stim_label 1 pergunta                                                  \
    -stim_times 2 timing/audio_false.1D 'BLOCK(2,1)'            \
    -stim_label 2 audio_false                                                \
    -stim_times 3 timing/audio_true.1D 'BLOCK(2,1)'            \
    -stim_label 3 audio_true                                               \
    -jobs 6                                                             \
    -x1D stdout: | 1dplot -stdin -one -thick  


#audio_false.1D
#audio_true.1D
#intervalo.1D
#pergunta.1D

#3dDeconvolve \

