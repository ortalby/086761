% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 3043.255740141492000 ; 3075.157441103771800 ];

%-- Principal point:
cc = [ 2000.498649871811300 ; 1569.945211275888100 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.121492722215998 ; -0.403010900147557 ; -0.004089296084763 ; 0.002919184498838 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 28.866332117229295 ; 26.239038533220580 ];

%-- Principal point uncertainty:
cc_error = [ 7.741481358037168 ; 24.729208265837695 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.007530999211681 ; 0.029300668854794 ; 0.000796189678780 ; 0.000972611830816 ; 0.000000000000000 ];

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
omc_1 = [ 8.936637e-01 ; 2.625452e+00 ; -7.998282e-01 ];
Tc_1  = [ 2.337865e+02 ; -6.336483e+02 ; 1.659655e+03 ];
omc_error_1 = [ 2.003408e-03 ; 4.772851e-03 ; 7.360019e-03 ];
Tc_error_1  = [ 4.323587e+00 ; 1.221570e+01 ; 1.493796e+01 ];

%-- Image #2:
omc_2 = [ 4.749972e-01 ; 2.849252e+00 ; -8.024931e-01 ];
Tc_2  = [ 3.657833e+02 ; -5.741118e+02 ; 1.518253e+03 ];
omc_error_2 = [ 1.428730e-03 ; 4.327559e-03 ; 7.881994e-03 ];
Tc_error_2  = [ 3.955854e+00 ; 1.117410e+01 ; 1.390069e+01 ];

%-- Image #3:
omc_3 = [ 9.175131e-01 ; -2.734431e+00 ; 8.148461e-01 ];
Tc_3  = [ 6.278799e+02 ; -1.382496e+02 ; 1.312404e+03 ];
omc_error_3 = [ 1.411503e-03 ; 4.333153e-03 ; 7.837225e-03 ];
Tc_error_3  = [ 3.365419e+00 ; 1.024795e+01 ; 1.226787e+01 ];

%-- Image #4:
omc_4 = [ 1.557833e+00 ; -2.255187e+00 ; 7.218254e-01 ];
Tc_4  = [ 5.298579e+02 ; 8.193274e+01 ; 1.217716e+03 ];
omc_error_4 = [ 2.762043e-03 ; 4.529653e-03 ; 6.789821e-03 ];
Tc_error_4  = [ 3.114325e+00 ; 9.881386e+00 ; 1.153000e+01 ];

%-- Image #5:
omc_5 = [ 2.534000e+00 ; -1.254980e-01 ; 6.028197e-03 ];
Tc_5  = [ -4.414830e+02 ; 2.410329e+02 ; 1.197128e+03 ];
omc_error_5 = [ 5.993496e-03 ; 1.312904e-03 ; 3.772131e-03 ];
Tc_error_5  = [ 3.085080e+00 ; 1.004872e+01 ; 1.137966e+01 ];

%-- Image #6:
omc_6 = [ 2.558805e+00 ; 2.059420e-01 ; -1.145032e-01 ];
Tc_6  = [ -5.263649e+02 ; 7.722948e+01 ; 1.307618e+03 ];
omc_error_6 = [ 5.778401e-03 ; 1.549901e-03 ; 3.903363e-03 ];
Tc_error_6  = [ 3.334640e+00 ; 1.065103e+01 ; 1.222894e+01 ];

%-- Image #7:
omc_7 = [ 2.520521e+00 ; 1.583287e-01 ; -6.941912e-02 ];
Tc_7  = [ -5.193096e+02 ; 1.267267e+02 ; 1.280719e+03 ];
omc_error_7 = [ 6.010756e-03 ; 1.454736e-03 ; 3.767319e-03 ];
Tc_error_7  = [ 3.278965e+00 ; 1.051640e+01 ; 1.210910e+01 ];

%-- Image #8:
omc_8 = [ 2.517524e+00 ; 3.504163e-01 ; -1.576361e-01 ];
Tc_8  = [ -5.617219e+02 ; 4.494849e+01 ; 1.333577e+03 ];
omc_error_8 = [ 5.860970e-03 ; 1.734425e-03 ; 3.881523e-03 ];
Tc_error_8  = [ 3.402818e+00 ; 1.080183e+01 ; 1.245396e+01 ];

%-- Image #9:
omc_9 = [ 2.469069e+00 ; 5.922822e-01 ; -2.167762e-01 ];
Tc_9  = [ -6.523549e+02 ; -6.849779e+01 ; 1.386988e+03 ];
omc_error_9 = [ 5.761358e-03 ; 2.104601e-03 ; 4.031704e-03 ];
Tc_error_9  = [ 3.540691e+00 ; 1.103176e+01 ; 1.296813e+01 ];

%-- Image #10:
omc_10 = [ 2.238040e+00 ; 1.246957e+00 ; -3.225049e-01 ];
Tc_10  = [ -5.158398e+02 ; -4.024454e+02 ; 1.543956e+03 ];
omc_error_10 = [ 5.210494e-03 ; 3.045361e-03 ; 4.467143e-03 ];
Tc_error_10  = [ 3.992305e+00 ; 1.167742e+01 ; 1.436550e+01 ];

%-- Image #11:
omc_11 = [ 2.242972e+00 ; 1.507222e+00 ; -3.361443e-01 ];
Tc_11  = [ -4.475946e+02 ; -4.556444e+02 ; 1.555271e+03 ];
omc_error_11 = [ 4.301836e-03 ; 3.113631e-03 ; 4.870291e-03 ];
Tc_error_11  = [ 4.030094e+00 ; 1.164164e+01 ; 1.456261e+01 ];

%-- Image #12:
omc_12 = [ 8.179945e-01 ; 2.787479e+00 ; -3.904132e-01 ];
Tc_12  = [ 3.183287e+02 ; -6.333833e+02 ; 1.569976e+03 ];
omc_error_12 = [ 1.806313e-03 ; 3.834959e-03 ; 6.022722e-03 ];
Tc_error_12  = [ 4.067133e+00 ; 1.151435e+01 ; 1.479394e+01 ];

%-- Image #13:
omc_13 = [ 2.998687e-02 ; 3.051879e+00 ; -3.976935e-01 ];
Tc_13  = [ 6.001460e+02 ; -4.858540e+02 ; 1.512965e+03 ];
omc_error_13 = [ 1.180921e-03 ; 3.638329e-03 ; 6.331603e-03 ];
Tc_error_13  = [ 3.912063e+00 ; 1.133093e+01 ; 1.435360e+01 ];

%-- Image #14:
omc_14 = [ 5.331141e-02 ; 3.013205e+00 ; -5.294724e-01 ];
Tc_14  = [ 4.712512e+02 ; -3.881192e+02 ; 1.500223e+03 ];
omc_error_14 = [ 1.175760e-03 ; 3.542057e-03 ; 6.847346e-03 ];
Tc_error_14  = [ 3.835902e+00 ; 1.129222e+01 ; 1.409591e+01 ];

%-- Image #15:
omc_15 = [ 2.696322e-01 ; -3.079301e+00 ; 5.539138e-01 ];
Tc_15  = [ 5.181514e+02 ; -3.181730e+02 ; 1.406173e+03 ];
omc_error_15 = [ 1.005064e-03 ; 3.284164e-03 ; 7.066834e-03 ];
Tc_error_15  = [ 3.607890e+00 ; 1.066385e+01 ; 1.327192e+01 ];

%-- Image #16:
omc_16 = [ 2.614965e+00 ; 7.348746e-02 ; -1.079142e-01 ];
Tc_16  = [ -5.146247e+02 ; 2.387219e+02 ; 1.102427e+03 ];
omc_error_16 = [ 5.650543e-03 ; 1.259246e-03 ; 3.905627e-03 ];
Tc_error_16  = [ 2.851168e+00 ; 9.273164e+00 ; 1.019351e+01 ];

%-- Image #17:
omc_17 = [ 1.506951e-01 ; 2.974371e+00 ; -8.336030e-01 ];
Tc_17  = [ 5.477456e+02 ; -4.548768e+02 ; 1.380669e+03 ];
omc_error_17 = [ 1.352109e-03 ; 4.009015e-03 ; 8.474808e-03 ];
Tc_error_17  = [ 3.569054e+00 ; 1.032697e+01 ; 1.286459e+01 ];

%-- Image #18:
omc_18 = [ 1.042285e+00 ; -2.706707e+00 ; 6.995065e-01 ];
Tc_18  = [ 6.215344e+02 ; -6.448659e+01 ; 1.247109e+03 ];
omc_error_18 = [ 1.438214e-03 ; 4.050439e-03 ; 7.284952e-03 ];
Tc_error_18  = [ 3.203621e+00 ; 9.843029e+00 ; 1.175439e+01 ];

%-- Image #19:
omc_19 = [ NaN ; NaN ; NaN ];
Tc_19  = [ NaN ; NaN ; NaN ];
omc_error_19 = [ NaN ; NaN ; NaN ];
Tc_error_19  = [ NaN ; NaN ; NaN ];

%-- Image #20:
omc_20 = [ 2.484871e+00 ; 7.164724e-01 ; -1.961878e-01 ];
Tc_20  = [ -5.897409e+02 ; -5.829429e+01 ; 1.306401e+03 ];
omc_error_20 = [ 5.489391e-03 ; 2.058060e-03 ; 3.996532e-03 ];
Tc_error_20  = [ 3.347961e+00 ; 1.038095e+01 ; 1.225671e+01 ];

