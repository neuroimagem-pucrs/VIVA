#! /bin/csh

3dDeconvolve -nodata 315 2 \
 	-polort -1 -num_stimts 2   \
	-stim_times 1 im_crack_1.1D 'BLOCK(4,1)'    \
	-stim_times 2 im_neutro_1.1D 'BLOCK(4,1)'    \
	-x1D stdout: | 1dplot -one -stdin
        
