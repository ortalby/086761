% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 3020.088046059713200 ; 3056.136472502028900 ];

%-- Principal point:
cc = [ 1999.653389706930700 ; 1592.938769615439700 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.102331267250414 ; -0.310149069241223 ; -0.004149156981810 ; 0.002711831520801 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 39.751448642380026 ; 35.312003063083473 ];

%-- Principal point uncertainty:
cc_error = [ 9.427749822860131 ; 35.212145252922106 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.008737751549689 ; 0.032952029718555 ; 0.000964094232718 ; 0.001212735753787 ; 0.000000000000000 ];

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
omc_1 = [ 8.950595e-01 ; 2.629115e+00 ; -7.926716e-01 ];
Tc_1  = [ 2.342473e+02 ; -6.451280e+02 ; 1.646078e+03 ];
omc_error_1 = [ 2.727546e-03 ; 6.479853e-03 ; 1.021488e-02 ];
Tc_error_1  = [ 5.283483e+00 ; 1.733940e+01 ; 2.074671e+01 ];

%-- Image #2:
omc_2 = [ 4.757912e-01 ; 2.852311e+00 ; -7.950320e-01 ];
Tc_2  = [ 3.661749e+02 ; -5.846029e+02 ; 1.505708e+03 ];
omc_error_2 = [ 1.834413e-03 ; 5.764957e-03 ; 1.090487e-02 ];
Tc_error_2  = [ 4.832693e+00 ; 1.585292e+01 ; 1.927234e+01 ];

%-- Image #3:
omc_3 = [ 9.186166e-01 ; -2.737943e+00 ; 8.077289e-01 ];
Tc_3  = [ 6.282969e+02 ; -1.476930e+02 ; 1.301835e+03 ];
omc_error_3 = [ 1.819282e-03 ; 5.777278e-03 ; 1.086153e-02 ];
Tc_error_3  = [ 4.105902e+00 ; 1.455447e+01 ; 1.689664e+01 ];

%-- Image #4:
omc_4 = [ 1.560459e+00 ; -2.259206e+00 ; 7.157473e-01 ];
Tc_4  = [ 5.302281e+02 ; 7.286463e+01 ; 1.208106e+03 ];
omc_error_4 = [ 3.773170e-03 ; 6.156482e-03 ; 9.340013e-03 ];
Tc_error_4  = [ 3.795105e+00 ; 1.403680e+01 ; 1.582164e+01 ];

%-- Image #5:
omc_5 = [ 2.539782e+00 ; -1.255387e-01 ; 5.891354e-03 ];
Tc_5  = [ -4.411151e+02 ; 2.317955e+02 ; 1.187281e+03 ];
omc_error_5 = [ 8.343061e-03 ; 1.597555e-03 ; 4.604942e-03 ];
Tc_error_5  = [ 3.753101e+00 ; 1.426151e+01 ; 1.557544e+01 ];

%-- Image #6:
omc_6 = [ 2.564559e+00 ; 2.067973e-01 ; -1.139608e-01 ];
Tc_6  = [ -5.259993e+02 ; 6.739127e+01 ; 1.297097e+03 ];
omc_error_6 = [ 8.028009e-03 ; 1.960472e-03 ; 4.801817e-03 ];
Tc_error_6  = [ 4.062107e+00 ; 1.512011e+01 ; 1.679146e+01 ];

%-- Image #7:
omc_7 = [ 2.526452e+00 ; 1.589938e-01 ; -6.925289e-02 ];
Tc_7  = [ -5.189758e+02 ; 1.170132e+02 ; 1.270317e+03 ];
omc_error_7 = [ 8.384386e-03 ; 1.807646e-03 ; 4.613010e-03 ];
Tc_error_7  = [ 3.992552e+00 ; 1.492764e+01 ; 1.660744e+01 ];

%-- Image #8:
omc_8 = [ 2.523436e+00 ; 3.516536e-01 ; -1.575478e-01 ];
Tc_8  = [ -5.614043e+02 ; 3.499521e+01 ; 1.323032e+03 ];
omc_error_8 = [ 8.167268e-03 ; 2.247691e-03 ; 4.810193e-03 ];
Tc_error_8  = [ 4.146850e+00 ; 1.533766e+01 ; 1.711055e+01 ];

%-- Image #9:
omc_9 = [ 2.475086e+00 ; 5.939444e-01 ; -2.164709e-01 ];
Tc_9  = [ -6.519807e+02 ; -7.862394e+01 ; 1.376231e+03 ];
omc_error_9 = [ 8.039239e-03 ; 2.788948e-03 ; 5.060405e-03 ];
Tc_error_9  = [ 4.318168e+00 ; 1.566703e+01 ; 1.782644e+01 ];

%-- Image #10:
omc_10 = [ 2.243825e+00 ; 1.249481e+00 ; -3.207350e-01 ];
Tc_10  = [ -5.154192e+02 ; -4.131938e+02 ; 1.531809e+03 ];
omc_error_10 = [ 7.278987e-03 ; 4.108443e-03 ; 5.787453e-03 ];
Tc_error_10  = [ 4.874625e+00 ; 1.657948e+01 ; 1.983823e+01 ];

%-- Image #11:
omc_11 = [ 2.246871e+00 ; 1.509351e+00 ; -3.341295e-01 ];
Tc_11  = [ -4.472112e+02 ; -4.663168e+02 ; 1.542621e+03 ];
omc_error_11 = [ 5.862732e-03 ; 4.149607e-03 ; 6.271673e-03 ];
Tc_error_11  = [ 4.920719e+00 ; 1.652580e+01 ; 2.009655e+01 ];

%-- Image #12:
omc_12 = [ 8.194132e-01 ; 2.789343e+00 ; -3.877990e-01 ];
Tc_12  = [ 3.186558e+02 ; -6.439848e+02 ; 1.557263e+03 ];
omc_error_12 = [ 2.444246e-03 ; 4.998738e-03 ; 7.612737e-03 ];
Tc_error_12  = [ 4.968829e+00 ; 1.634918e+01 ; 2.036797e+01 ];

%-- Image #13:
omc_13 = [ 3.033469e-02 ; 3.052401e+00 ; -3.954492e-01 ];
Tc_13  = [ 6.005429e+02 ; -4.962382e+02 ; 1.501008e+03 ];
omc_error_13 = [ 1.449379e-03 ; 4.517272e-03 ; 7.869081e-03 ];
Tc_error_13  = [ 4.778580e+00 ; 1.608448e+01 ; 1.972193e+01 ];

%-- Image #14:
omc_14 = [ 5.378815e-02 ; 3.014798e+00 ; -5.254826e-01 ];
Tc_14  = [ 4.716864e+02 ; -3.985518e+02 ; 1.487778e+03 ];
omc_error_14 = [ 1.463485e-03 ; 4.475498e-03 ; 8.885908e-03 ];
Tc_error_14  = [ 4.682555e+00 ; 1.603249e+01 ; 1.942700e+01 ];

%-- Image #15:
omc_15 = [ 2.697564e-01 ; -3.079712e+00 ; 5.495438e-01 ];
Tc_15  = [ 5.186072e+02 ; -3.279616e+02 ; 1.394411e+03 ];
omc_error_15 = [ 1.207463e-03 ; 4.008965e-03 ; 9.232088e-03 ];
Tc_error_15  = [ 4.402185e+00 ; 1.513943e+01 ; 1.826651e+01 ];

%-- Image #16:
omc_16 = [ 2.620782e+00 ; 7.411511e-02 ; -1.072843e-01 ];
Tc_16  = [ -5.143167e+02 ; 2.302322e+02 ; 1.093894e+03 ];
omc_error_16 = [ 7.771861e-03 ; 1.587096e-03 ; 4.785712e-03 ];
Tc_error_16  = [ 3.471327e+00 ; 1.317184e+01 ; 1.399350e+01 ];

%-- Image #17:
omc_17 = [ 1.507683e-01 ; 2.975965e+00 ; -8.259897e-01 ];
Tc_17  = [ 5.480232e+02 ; -4.642838e+02 ; 1.369842e+03 ];
omc_error_17 = [ 1.653566e-03 ; 5.236988e-03 ; 1.173252e-02 ];
Tc_error_17  = [ 4.360235e+00 ; 1.464193e+01 ; 1.777578e+01 ];

%-- Image #18:
omc_18 = [ 1.043334e+00 ; -2.709919e+00 ; 6.929326e-01 ];
Tc_18  = [ 6.219166e+02 ; -7.358543e+01 ; 1.236979e+03 ];
omc_error_18 = [ 1.870236e-03 ; 5.329570e-03 ; 9.941177e-03 ];
Tc_error_18  = [ 3.906881e+00 ; 1.397704e+01 ; 1.616996e+01 ];

%-- Image #19:
omc_19 = [ NaN ; NaN ; NaN ];
Tc_19  = [ NaN ; NaN ; NaN ];
omc_error_19 = [ NaN ; NaN ; NaN ];
Tc_error_19  = [ NaN ; NaN ; NaN ];

%-- Image #20:
omc_20 = [ 2.490767e+00 ; 7.182995e-01 ; -1.949874e-01 ];
Tc_20  = [ -5.893399e+02 ; -6.793767e+01 ; 1.296009e+03 ];
omc_error_20 = [ 7.607272e-03 ; 2.720355e-03 ; 5.006304e-03 ];
Tc_error_20  = [ 4.082558e+00 ; 1.473931e+01 ; 1.686458e+01 ];

