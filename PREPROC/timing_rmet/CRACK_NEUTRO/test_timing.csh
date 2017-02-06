#! /bin/csh

#3dDeconvolve -nodata 330 2.0 -num_stimts 1 -polort 2   \
#                  -local_times -x1D stdout:             \
#                  -stim_times 1 ansia_crack_c1.1D 'BLOCK(4,1)'        \
#			| 1dplot -thick -one

3dDeconvolve 	-nodata 330 2.0 -num_stimts 11 -polort -1   			\
             	-local_times -x1D stdout:             				\
		-concat '1D: 0 115' 						\
                -stim_times 1 ansia_crack_c1.1D 'BLOCK(4,1)'        		\
                -stim_times 2 ansia_neutro_c1.1D 'BLOCK(4,1)'        		\
                -stim_times 3 baseline_c1.1D 'BLOCK(30,1)'        		\
                -stim_times 4 desejo_crack_c1.1D 'BLOCK(4,1)'        		\
                -stim_times 5 desejo_neutro_c1.1D 'BLOCK(4,1)'        		\
                -stim_times 6 img_crack_c1.1D 'BLOCK(4,1)'        		\
                -stim_times 7 img_neutro_c1.1D 'BLOCK(4,1)'        		\
                -stim_times 8 resp_ansia_crack_c1.1D 'BLOCK(4,1)'     		\
                -stim_times 9 resp_ansia_neutro_c1.1D 'BLOCK(4,1)'     		\
                -stim_times 10 resp_desejo_crack_c1.1D 'BLOCK(4,1)'     	\
                -stim_times 11 resp_desejo_neutro_c1.1D 'BLOCK(4,1)'    	\
		| 1dplot -thick -one -stdin 


#3dDeconvolve -nodata 100 1.0 -num_stimts 2 -polort 5   \
#                  -local_times -x1D stdout:             \
#		  -stim_times 1 '1D:0 ' 'BLOCK(50,1)'         \
#		-stim_times 2 '1D:50' 'BLOCK(50,1)' \
#			| 1dplot -thick -one -stdin 
