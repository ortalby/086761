% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 3049.394847837309500 ; 3080.523380383565800 ];

%-- Principal point:
cc = [ 1996.708008340089900 ; 1570.362862642442500 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.097913727563794 ; -0.302542380301320 ; -0.003911498976139 ; 0.002497437364228 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 37.402468777938886 ; 32.805357413985234 ];

%-- Principal point uncertainty:
cc_error = [ 8.745519829821181 ; 33.658389790327767 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.007915215885162 ; 0.030082680766657 ; 0.000879638641387 ; 0.001110416083326 ; 0.000000000000000 ];

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
omc_1 = [ 8.934549e-01 ; 2.626542e+00 ; -8.001669e-01 ];
Tc_1  = [ 2.358150e+02 ; -6.339356e+02 ; 1.660532e+03 ];
omc_error_1 = [ 2.572166e-03 ; 6.057879e-03 ; 9.641015e-03 ];
Tc_error_1  = [ 4.887085e+00 ; 1.661481e+01 ; 1.953570e+01 ];

%-- Image #2:
omc_2 = [ 4.746042e-01 ; 2.850548e+00 ; -8.021665e-01 ];
Tc_2  = [ 3.676635e+02 ; -5.744475e+02 ; 1.518780e+03 ];
omc_error_2 = [ 1.709876e-03 ; 5.366150e-03 ; 1.028000e-02 ];
Tc_error_2  = [ 4.469570e+00 ; 1.518984e+01 ; 1.813528e+01 ];

%-- Image #3:
omc_3 = [ 9.179045e-01 ; -2.734006e+00 ; 8.135559e-01 ];
Tc_3  = [ 6.295242e+02 ; -1.384124e+02 ; 1.312941e+03 ];
omc_error_3 = [ 1.689597e-03 ; 5.447635e-03 ; 1.019264e-02 ];
Tc_error_3  = [ 3.803045e+00 ; 1.395015e+01 ; 1.587931e+01 ];

%-- Image #4:
omc_4 = [ 1.558190e+00 ; -2.254710e+00 ; 7.201257e-01 ];
Tc_4  = [ 5.313832e+02 ; 8.181420e+01 ; 1.218410e+03 ];
omc_error_4 = [ 3.559010e-03 ; 5.820304e-03 ; 8.724139e-03 ];
Tc_error_4  = [ 3.517501e+00 ; 1.345256e+01 ; 1.486164e+01 ];

%-- Image #5:
omc_5 = [ 2.534196e+00 ; -1.250017e-01 ; 4.537790e-03 ];
Tc_5  = [ -4.399883e+02 ; 2.408692e+02 ; 1.198853e+03 ];
omc_error_5 = [ 7.887452e-03 ; 1.456152e-03 ; 4.208455e-03 ];
Tc_error_5  = [ 3.483604e+00 ; 1.367489e+01 ; 1.466957e+01 ];

%-- Image #6:
omc_6 = [ 2.559153e+00 ; 2.065036e-01 ; -1.159503e-01 ];
Tc_6  = [ -5.247365e+02 ; 7.701805e+01 ; 1.309455e+03 ];
omc_error_6 = [ 7.582763e-03 ; 1.797468e-03 ; 4.410202e-03 ];
Tc_error_6  = [ 3.769014e+00 ; 1.449668e+01 ; 1.582129e+01 ];

%-- Image #7:
omc_7 = [ 2.520877e+00 ; 1.588096e-01 ; -7.054070e-02 ];
Tc_7  = [ -5.176847e+02 ; 1.265358e+02 ; 1.282438e+03 ];
omc_error_7 = [ 7.925272e-03 ; 1.649746e-03 ; 4.229068e-03 ];
Tc_error_7  = [ 3.704514e+00 ; 1.431214e+01 ; 1.564697e+01 ];

%-- Image #8:
omc_8 = [ 2.517833e+00 ; 3.510041e-01 ; -1.589635e-01 ];
Tc_8  = [ -5.600554e+02 ; 4.472118e+01 ; 1.335442e+03 ];
omc_error_8 = [ 7.718488e-03 ; 2.071112e-03 ; 4.428445e-03 ];
Tc_error_8  = [ 3.846823e+00 ; 1.470304e+01 ; 1.612460e+01 ];

%-- Image #9:
omc_9 = [ 2.469565e+00 ; 5.929977e-01 ; -2.180022e-01 ];
Tc_9  = [ -6.506272e+02 ; -6.877342e+01 ; 1.389123e+03 ];
omc_error_9 = [ 7.591557e-03 ; 2.582707e-03 ; 4.676049e-03 ];
Tc_error_9  = [ 4.004470e+00 ; 1.501873e+01 ; 1.680801e+01 ];

%-- Image #10:
omc_10 = [ 2.238511e+00 ; 1.247904e+00 ; -3.235116e-01 ];
Tc_10  = [ -5.138834e+02 ; -4.028179e+02 ; 1.545685e+03 ];
omc_error_10 = [ 6.872749e-03 ; 3.822675e-03 ; 5.395813e-03 ];
Tc_error_10  = [ 4.514455e+00 ; 1.588906e+01 ; 1.869956e+01 ];

%-- Image #11:
omc_11 = [ 2.243457e+00 ; 1.508232e+00 ; -3.365543e-01 ];
Tc_11  = [ -4.456235e+02 ; -4.560740e+02 ; 1.556765e+03 ];
omc_error_11 = [ 5.505675e-03 ; 3.850083e-03 ; 5.840231e-03 ];
Tc_error_11  = [ 4.556932e+00 ; 1.584019e+01 ; 1.894061e+01 ];

%-- Image #12:
omc_12 = [ 8.179924e-01 ; 2.788401e+00 ; -3.897280e-01 ];
Tc_12  = [ 3.202416e+02 ; -6.337057e+02 ; 1.570523e+03 ];
omc_error_12 = [ 2.309024e-03 ; 4.625564e-03 ; 7.040665e-03 ];
Tc_error_12  = [ 4.596542e+00 ; 1.566597e+01 ; 1.913810e+01 ];

%-- Image #13:
omc_13 = [ 2.982818e-02 ; 3.052138e+00 ; -3.968321e-01 ];
Tc_13  = [ 6.019691e+02 ; -4.861008e+02 ; 1.513799e+03 ];
omc_error_13 = [ 1.321297e-03 ; 4.153946e-03 ; 7.245017e-03 ];
Tc_error_13  = [ 4.421553e+00 ; 1.541475e+01 ; 1.851898e+01 ];

%-- Image #14:
omc_14 = [ 5.301435e-02 ; 3.014327e+00 ; -5.288253e-01 ];
Tc_14  = [ 4.731054e+02 ; -3.883750e+02 ; 1.500631e+03 ];
omc_error_14 = [ 1.346569e-03 ; 4.123500e-03 ; 8.285535e-03 ];
Tc_error_14  = [ 4.335746e+00 ; 1.536914e+01 ; 1.826286e+01 ];

%-- Image #15:
omc_15 = [ 2.699198e-01 ; -3.078520e+00 ; 5.527424e-01 ];
Tc_15  = [ 5.199058e+02 ; -3.184001e+02 ; 1.406546e+03 ];
omc_error_15 = [ 1.092763e-03 ; 3.692136e-03 ; 8.590822e-03 ];
Tc_error_15  = [ 4.076908e+00 ; 1.451322e+01 ; 1.716637e+01 ];

%-- Image #16:
omc_16 = [ 2.615513e+00 ; 7.393871e-02 ; -1.095606e-01 ];
Tc_16  = [ -5.132296e+02 ; 2.386348e+02 ; 1.104443e+03 ];
omc_error_16 = [ 7.332914e-03 ; 1.456652e-03 ; 4.393170e-03 ];
Tc_error_16  = [ 3.222761e+00 ; 1.263020e+01 ; 1.318683e+01 ];

%-- Image #17:
omc_17 = [ 1.483935e-01 ; 2.970187e+00 ; -8.333160e-01 ];
Tc_17  = [ 5.497689e+02 ; -4.549723e+02 ; 1.384428e+03 ];
omc_error_17 = [ 1.526947e-03 ; 4.896781e-03 ; 1.102078e-02 ];
Tc_error_17  = [ 4.043237e+00 ; 1.405829e+01 ; 1.673975e+01 ];

%-- Image #18:
omc_18 = [ 1.042625e+00 ; -2.706365e+00 ; 6.981273e-01 ];
Tc_18  = [ 6.231094e+02 ; -6.461615e+01 ; 1.247724e+03 ];
omc_error_18 = [ 1.744594e-03 ; 5.009246e-03 ; 9.308264e-03 ];
Tc_error_18  = [ 3.620159e+00 ; 1.340008e+01 ; 1.519418e+01 ];

%-- Image #19:
omc_19 = [ NaN ; NaN ; NaN ];
Tc_19  = [ NaN ; NaN ; NaN ];
omc_error_19 = [ NaN ; NaN ; NaN ];
Tc_error_19  = [ NaN ; NaN ; NaN ];

%-- Image #20:
omc_20 = [ 2.485269e+00 ; 7.171136e-01 ; -1.973890e-01 ];
Tc_20  = [ -5.880964e+02 ; -5.852478e+01 ; 1.308171e+03 ];
omc_error_20 = [ 7.183098e-03 ; 2.524096e-03 ; 4.629517e-03 ];
Tc_error_20  = [ 3.785754e+00 ; 1.413218e+01 ; 1.589502e+01 ];

