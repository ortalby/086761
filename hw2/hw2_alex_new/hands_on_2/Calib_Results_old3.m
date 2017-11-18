% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 3064.807074441512700 ; 3093.112204888213000 ];

%-- Principal point:
cc = [ 1999.021478704965600 ; 1548.763796533635500 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.139951326962169 ; -0.496849836202795 ; -0.004214419567283 ; 0.002701944472499 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 24.151526235498153 ; 22.467715362189676 ];

%-- Principal point uncertainty:
cc_error = [ 7.031382419145971 ; 19.948235174489898 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.007209196347469 ; 0.028872815599195 ; 0.000741296358135 ; 0.000863879175260 ; 0.000000000000000 ];

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
omc_1 = [ 8.920831e-01 ; 2.622432e+00 ; -8.070761e-01 ];
Tc_1  = [ 2.346154e+02 ; -6.228785e+02 ; 1.672045e+03 ];
omc_error_1 = [ 1.699284e-03 ; 4.018710e-03 ; 6.114257e-03 ];
Tc_error_1  = [ 3.913887e+00 ; 9.882115e+00 ; 1.238841e+01 ];

%-- Image #2:
omc_2 = [ 4.741002e-01 ; 2.847093e+00 ; -8.095713e-01 ];
Tc_2  = [ 3.665818e+02 ; -5.644045e+02 ; 1.529452e+03 ];
omc_error_2 = [ 1.266975e-03 ; 3.699512e-03 ; 6.565816e-03 ];
Tc_error_2  = [ 3.581147e+00 ; 9.042562e+00 ; 1.154506e+01 ];

%-- Image #3:
omc_3 = [ 9.167308e-01 ; -2.730648e+00 ; 8.207142e-01 ];
Tc_3  = [ 6.285241e+02 ; -1.294599e+02 ; 1.321798e+03 ];
omc_error_3 = [ 1.244242e-03 ; 3.721541e-03 ; 6.504358e-03 ];
Tc_error_3  = [ 3.050672e+00 ; 8.286788e+00 ; 1.025477e+01 ];

%-- Image #4:
omc_4 = [ 1.555659e+00 ; -2.251306e+00 ; 7.264772e-01 ];
Tc_4  = [ 5.304426e+02 ; 9.038485e+01 ; 1.226695e+03 ];
omc_error_4 = [ 2.322280e-03 ; 3.829265e-03 ; 5.666775e-03 ];
Tc_error_4  = [ 2.827366e+00 ; 7.991840e+00 ; 9.678408e+00 ];

%-- Image #5:
omc_5 = [ 2.529081e+00 ; -1.251725e-01 ; 5.355036e-03 ];
Tc_5  = [ -4.409081e+02 ; 2.495976e+02 ; 1.206711e+03 ];
omc_error_5 = [ 4.959467e-03 ; 1.198831e-03 ; 3.430076e-03 ];
Tc_error_5  = [ 2.806324e+00 ; 8.131146e+00 ; 9.588220e+00 ];

%-- Image #6:
omc_6 = [ 2.554041e+00 ; 2.055795e-01 ; -1.160125e-01 ];
Tc_6  = [ -5.257261e+02 ; 8.632968e+01 ; 1.318016e+03 ];
omc_error_6 = [ 4.791681e-03 ; 1.376863e-03 ; 3.534094e-03 ];
Tc_error_6  = [ 3.029732e+00 ; 8.616419e+00 ; 1.027169e+01 ];

%-- Image #7:
omc_7 = [ 2.515672e+00 ; 1.580963e-01 ; -7.037029e-02 ];
Tc_7  = [ -5.186687e+02 ; 1.357195e+02 ; 1.290892e+03 ];
omc_error_7 = [ 4.963655e-03 ; 1.307766e-03 ; 3.420997e-03 ];
Tc_error_7  = [ 2.980123e+00 ; 8.507685e+00 ; 1.018203e+01 ];

%-- Image #8:
omc_8 = [ 2.512661e+00 ; 3.497820e-01 ; -1.593610e-01 ];
Tc_8  = [ -5.610657e+02 ; 5.418435e+01 ; 1.344168e+03 ];
omc_error_8 = [ 4.845141e-03 ; 1.515575e-03 ; 3.500743e-03 ];
Tc_error_8  = [ 3.090682e+00 ; 8.737496e+00 ; 1.045423e+01 ];

%-- Image #9:
omc_9 = [ 2.464164e+00 ; 5.912584e-01 ; -2.189061e-01 ];
Tc_9  = [ -6.516658e+02 ; -5.906134e+01 ; 1.397904e+03 ];
omc_error_9 = [ 4.754857e-03 ; 1.808746e-03 ; 3.609365e-03 ];
Tc_error_9  = [ 3.213768e+00 ; 8.921965e+00 ; 1.087922e+01 ];

%-- Image #10:
omc_10 = [ 2.233638e+00 ; 1.245163e+00 ; -3.256106e-01 ];
Tc_10  = [ -5.150610e+02 ; -3.923864e+02 ; 1.556148e+03 ];
omc_error_10 = [ 4.294634e-03 ; 2.578926e-03 ; 3.919626e-03 ];
Tc_error_10  = [ 3.619496e+00 ; 9.446542e+00 ; 1.199509e+01 ];

%-- Image #11:
omc_11 = [ 2.239545e+00 ; 1.505476e+00 ; -3.389764e-01 ];
Tc_11  = [ -4.468086e+02 ; -4.456786e+02 ; 1.567545e+03 ];
omc_error_11 = [ 3.638506e-03 ; 2.667919e-03 ; 4.297492e-03 ];
Tc_error_11  = [ 3.652893e+00 ; 9.417052e+00 ; 1.216485e+01 ];

%-- Image #12:
omc_12 = [ 8.167515e-01 ; 2.786264e+00 ; -3.944442e-01 ];
Tc_12  = [ 3.191919e+02 ; -6.234564e+02 ; 1.581865e+03 ];
omc_error_12 = [ 1.538110e-03 ; 3.341147e-03 ; 5.440112e-03 ];
Tc_error_12  = [ 3.683603e+00 ; 9.313093e+00 ; 1.237974e+01 ];

%-- Image #13:
omc_13 = [ 2.946456e-02 ; 3.052154e+00 ; -4.011113e-01 ];
Tc_13  = [ 6.009686e+02 ; -4.761397e+02 ; 1.523695e+03 ];
omc_error_13 = [ 1.079842e-03 ; 3.285004e-03 ; 5.797810e-03 ];
Tc_error_13  = [ 3.542373e+00 ; 9.165774e+00 ; 1.202809e+01 ];

%-- Image #14:
omc_14 = [ 5.274244e-02 ; 3.012295e+00 ; -5.341324e-01 ];
Tc_14  = [ 4.720019e+02 ; -3.783957e+02 ; 1.511564e+03 ];
omc_error_14 = [ 1.065157e-03 ; 3.161737e-03 ; 6.063179e-03 ];
Tc_error_14  = [ 3.475990e+00 ; 9.133875e+00 ; 1.178224e+01 ];

%-- Image #15:
omc_15 = [ 2.698097e-01 ; -3.077797e+00 ; 5.584852e-01 ];
Tc_15  = [ 5.188573e+02 ; -3.089998e+02 ; 1.416726e+03 ];
omc_error_15 = [ 9.312298e-04 ; 3.005184e-03 ; 6.212223e-03 ];
Tc_error_15  = [ 3.270378e+00 ; 8.625152e+00 ; 1.110675e+01 ];

%-- Image #16:
omc_16 = [ 2.610028e+00 ; 7.318306e-02 ; -1.092052e-01 ];
Tc_16  = [ -5.140750e+02 ; 2.465748e+02 ; 1.110727e+03 ];
omc_error_16 = [ 4.725653e-03 ; 1.121439e-03 ; 3.546067e-03 ];
Tc_error_16  = [ 2.591611e+00 ; 7.497729e+00 ; 8.569266e+00 ];

%-- Image #17:
omc_17 = [ 1.499426e-01 ; 2.973610e+00 ; -8.385090e-01 ];
Tc_17  = [ 5.485721e+02 ; -4.462880e+02 ; 1.390849e+03 ];
omc_error_17 = [ 1.231830e-03 ; 3.476869e-03 ; 7.041730e-03 ];
Tc_error_17  = [ 3.232156e+00 ; 8.365810e+00 ; 1.072331e+01 ];

%-- Image #18:
omc_18 = [ 1.041304e+00 ; -2.703184e+00 ; 7.047690e-01 ];
Tc_18  = [ 6.221430e+02 ; -5.607081e+01 ; 1.255972e+03 ];
omc_error_18 = [ 1.262791e-03 ; 3.517347e-03 ; 6.137549e-03 ];
Tc_error_18  = [ 2.904919e+00 ; 7.959919e+00 ; 9.836838e+00 ];

%-- Image #19:
omc_19 = [ NaN ; NaN ; NaN ];
Tc_19  = [ NaN ; NaN ; NaN ];
omc_error_19 = [ NaN ; NaN ; NaN ];
Tc_error_19  = [ NaN ; NaN ; NaN ];

%-- Image #20:
omc_20 = [ 2.480322e+00 ; 7.154235e-01 ; -1.983476e-01 ];
Tc_20  = [ -5.891050e+02 ; -4.940835e+01 ; 1.316834e+03 ];
omc_error_20 = [ 4.561478e-03 ; 1.771441e-03 ; 3.584011e-03 ];
Tc_error_20  = [ 3.039020e+00 ; 8.396986e+00 ; 1.027253e+01 ];

