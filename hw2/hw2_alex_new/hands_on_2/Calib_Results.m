% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 3053.923712115762100 ; 3084.159698670142000 ];

%-- Principal point:
cc = [ 1998.187054687154400 ; 1560.004513627840400 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.119587146361372 ; -0.396213960063179 ; -0.004411040579023 ; 0.002749200778621 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 29.442419001052773 ; 26.616909173194262 ];

%-- Principal point uncertainty:
cc_error = [ 7.870316274384178 ; 25.488715717742227 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.007519804087749 ; 0.029288781785485 ; 0.000802192321752 ; 0.000984042281406 ; 0.000000000000000 ];

%-- Image size:
nx = 3968;
ny = 2976;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 8.927070e-01 ; 2.624173e+00 ; -8.036758e-01 ];
Tc_1  = [ 2.349962e+02 ; -6.284710e+02 ; 1.665360e+03 ];
omc_error_1 = [ 2.050455e-03 ; 4.859779e-03 ; 7.528495e-03 ];
Tc_error_1  = [ 4.389840e+00 ; 1.260483e+01 ; 1.524486e+01 ];

%-- Image #2:
omc_2 = [ 4.743497e-01 ; 2.848451e+00 ; -8.060559e-01 ];
Tc_2  = [ 3.669107e+02 ; -5.694725e+02 ; 1.523310e+03 ];
omc_error_2 = [ 1.453489e-03 ; 4.394588e-03 ; 8.056365e-03 ];
Tc_error_2  = [ 4.015889e+00 ; 1.152903e+01 ; 1.418081e+01 ];

%-- Image #3:
omc_3 = [ 9.173032e-01 ; -2.732419e+00 ; 8.175246e-01 ];
Tc_3  = [ 6.288630e+02 ; -1.340421e+02 ; 1.316466e+03 ];
omc_error_3 = [ 1.430635e-03 ; 4.424708e-03 ; 7.993952e-03 ];
Tc_error_3  = [ 3.419246e+00 ; 1.057559e+01 ; 1.250219e+01 ];

%-- Image #4:
omc_4 = [ 1.556855e+00 ; -2.252966e+00 ; 7.237023e-01 ];
Tc_4  = [ 5.307726e+02 ; 8.594496e+01 ; 1.221400e+03 ];
omc_error_4 = [ 2.821759e-03 ; 4.635154e-03 ; 6.909315e-03 ];
Tc_error_4  = [ 3.165271e+00 ; 1.019664e+01 ; 1.174374e+01 ];

%-- Image #5:
omc_5 = [ 2.531511e+00 ; -1.251447e-01 ; 5.173899e-03 ];
Tc_5  = [ -4.405836e+02 ; 2.450432e+02 ; 1.201386e+03 ];
omc_error_5 = [ 6.135951e-03 ; 1.322793e-03 ; 3.797446e-03 ];
Tc_error_5  = [ 3.137672e+00 ; 1.037057e+01 ; 1.160071e+01 ];

%-- Image #6:
omc_6 = [ 2.556369e+00 ; 2.059639e-01 ; -1.157150e-01 ];
Tc_6  = [ -5.253816e+02 ; 8.148434e+01 ; 1.312325e+03 ];
omc_error_6 = [ 5.912085e-03 ; 1.564723e-03 ; 3.936542e-03 ];
Tc_error_6  = [ 3.391173e+00 ; 1.099255e+01 ; 1.247286e+01 ];

%-- Image #7:
omc_7 = [ 2.518129e+00 ; 1.583760e-01 ; -7.025084e-02 ];
Tc_7  = [ -5.183231e+02 ; 1.309424e+02 ; 1.285248e+03 ];
omc_error_7 = [ 6.153326e-03 ; 1.466173e-03 ; 3.797614e-03 ];
Tc_error_7  = [ 3.334462e+00 ; 1.085308e+01 ; 1.234867e+01 ];

%-- Image #8:
omc_8 = [ 2.515059e+00 ; 3.503049e-01 ; -1.589408e-01 ];
Tc_8  = [ -5.607164e+02 ; 4.927116e+01 ; 1.338398e+03 ];
omc_error_8 = [ 5.998894e-03 ; 1.755726e-03 ; 3.919723e-03 ];
Tc_error_8  = [ 3.460376e+00 ; 1.114836e+01 ; 1.270392e+01 ];

%-- Image #9:
omc_9 = [ 2.466674e+00 ; 5.919930e-01 ; -2.183525e-01 ];
Tc_9  = [ -6.513095e+02 ; -6.406044e+01 ; 1.392133e+03 ];
omc_error_9 = [ 5.894351e-03 ; 2.135522e-03 ; 4.077910e-03 ];
Tc_error_9  = [ 3.600280e+00 ; 1.138653e+01 ; 1.323337e+01 ];

%-- Image #10:
omc_10 = [ 2.235863e+00 ; 1.246353e+00 ; -3.244700e-01 ];
Tc_10  = [ -5.146600e+02 ; -3.977279e+02 ; 1.549666e+03 ];
omc_error_10 = [ 5.330441e-03 ; 3.094769e-03 ; 4.537098e-03 ];
Tc_error_10  = [ 4.057172e+00 ; 1.205196e+01 ; 1.466345e+01 ];

%-- Image #11:
omc_11 = [ 2.241179e+00 ; 1.506607e+00 ; -3.376929e-01 ];
Tc_11  = [ -4.464062e+02 ; -4.509950e+02 ; 1.560932e+03 ];
omc_error_11 = [ 4.387219e-03 ; 3.157521e-03 ; 4.940017e-03 ];
Tc_error_11  = [ 4.094915e+00 ; 1.201460e+01 ; 1.486263e+01 ];

%-- Image #12:
omc_12 = [ 8.172382e-01 ; 2.786838e+00 ; -3.925959e-01 ];
Tc_12  = [ 3.195013e+02 ; -6.286255e+02 ; 1.575342e+03 ];
omc_error_12 = [ 1.847398e-03 ; 3.881467e-03 ; 6.089980e-03 ];
Tc_error_12  = [ 4.130314e+00 ; 1.188277e+01 ; 1.507893e+01 ];

%-- Image #13:
omc_13 = [ 2.963370e-02 ; 3.051557e+00 ; -3.998092e-01 ];
Tc_13  = [ 6.012713e+02 ; -4.811687e+02 ; 1.518050e+03 ];
omc_error_13 = [ 1.188487e-03 ; 3.667643e-03 ; 6.391118e-03 ];
Tc_error_13  = [ 3.973266e+00 ; 1.169410e+01 ; 1.462515e+01 ];

%-- Image #14:
omc_14 = [ 5.291191e-02 ; 3.013003e+00 ; -5.319375e-01 ];
Tc_14  = [ 4.723607e+02 ; -3.834853e+02 ; 1.505102e+03 ];
omc_error_14 = [ 1.187741e-03 ; 3.575655e-03 ; 6.953061e-03 ];
Tc_error_14  = [ 3.896823e+00 ; 1.165445e+01 ; 1.436771e+01 ];

%-- Image #15:
omc_15 = [ 2.698318e-01 ; -3.078259e+00 ; 5.562421e-01 ];
Tc_15  = [ 5.192035e+02 ; -3.137984e+02 ; 1.410703e+03 ];
omc_error_15 = [ 1.008555e-03 ; 3.313337e-03 ; 7.169971e-03 ];
Tc_error_15  = [ 3.665495e+00 ; 1.100550e+01 ; 1.352449e+01 ];

%-- Image #16:
omc_16 = [ 2.612634e+00 ; 7.350420e-02 ; -1.091205e-01 ];
Tc_16  = [ -5.137854e+02 ; 2.424416e+02 ; 1.106353e+03 ];
omc_error_16 = [ 5.774919e-03 ; 1.271813e-03 ; 3.936729e-03 ];
Tc_error_16  = [ 2.900212e+00 ; 9.571002e+00 ; 1.039611e+01 ];

%-- Image #17:
omc_17 = [ 1.484682e-01 ; 2.970301e+00 ; -8.391023e-01 ];
Tc_17  = [ 5.490639e+02 ; -4.501363e+02 ; 1.387281e+03 ];
omc_error_17 = [ 1.373739e-03 ; 4.084153e-03 ; 8.651485e-03 ];
Tc_error_17  = [ 3.629867e+00 ; 1.067279e+01 ; 1.312752e+01 ];

%-- Image #18:
omc_18 = [ 1.041962e+00 ; -2.704856e+00 ; 7.018983e-01 ];
Tc_18  = [ 6.224744e+02 ; -6.045187e+01 ; 1.250953e+03 ];
omc_error_18 = [ 1.459848e-03 ; 4.127929e-03 ; 7.417720e-03 ];
Tc_error_18  = [ 3.255429e+00 ; 1.015837e+01 ; 1.197599e+01 ];

%-- Image #19:
omc_19 = [ NaN ; NaN ; NaN ];
Tc_19  = [ NaN ; NaN ; NaN ];
omc_error_19 = [ NaN ; NaN ; NaN ];
Tc_error_19  = [ NaN ; NaN ; NaN ];

%-- Image #20:
omc_20 = [ 2.482605e+00 ; 7.161548e-01 ; -1.977285e-01 ];
Tc_20  = [ -5.887575e+02 ; -5.412009e+01 ; 1.311214e+03 ];
omc_error_20 = [ 5.613222e-03 ; 2.087985e-03 ; 4.042426e-03 ];
Tc_error_20  = [ 3.404303e+00 ; 1.071529e+01 ; 1.250600e+01 ];

