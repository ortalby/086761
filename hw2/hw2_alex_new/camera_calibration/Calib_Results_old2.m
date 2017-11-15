% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 3054.954144710886300 ; 3085.025158143034800 ];

%-- Principal point:
cc = [ 2000.991094925120700 ; 1558.143251451156600 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.130572305879132 ; -0.448637527475792 ; -0.004258131251187 ; 0.002939504367686 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 26.795432558120030 ; 24.626601554873513 ];

%-- Principal point uncertainty:
cc_error = [ 7.499641978473322 ; 22.589347981644259 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.007491943843990 ; 0.029586142643540 ; 0.000779502714365 ; 0.000930236670277 ; 0.000000000000000 ];

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
omc_1 = [ 8.928603e-01 ; 2.623429e+00 ; -8.033882e-01 ];
Tc_1  = [ 2.335262e+02 ; -6.276850e+02 ; 1.666471e+03 ];
omc_error_1 = [ 1.872595e-03 ; 4.444833e-03 ; 6.808558e-03 ];
Tc_error_1  = [ 4.180715e+00 ; 1.117533e+01 ; 1.380647e+01 ];

%-- Image #2:
omc_2 = [ 4.746295e-01 ; 2.847581e+00 ; -8.063225e-01 ];
Tc_2  = [ 3.655561e+02 ; -5.686739e+02 ; 1.524557e+03 ];
omc_error_2 = [ 1.365519e-03 ; 4.060081e-03 ; 7.301997e-03 ];
Tc_error_2  = [ 3.825548e+00 ; 1.022499e+01 ; 1.285662e+01 ];

%-- Image #3:
omc_3 = [ 9.169769e-01 ; -2.732642e+00 ; 8.185081e-01 ];
Tc_3  = [ 6.276708e+02 ; -1.333417e+02 ; 1.317751e+03 ];
omc_error_3 = [ 1.345415e-03 ; 4.076334e-03 ; 7.248226e-03 ];
Tc_error_3  = [ 3.257300e+00 ; 9.374162e+00 ; 1.138036e+01 ];

%-- Image #4:
omc_4 = [ 1.556542e+00 ; -2.253261e+00 ; 7.248989e-01 ];
Tc_4  = [ 5.296578e+02 ; 8.663299e+01 ; 1.222730e+03 ];
omc_error_4 = [ 2.571810e-03 ; 4.228536e-03 ; 6.294853e-03 ];
Tc_error_4  = [ 3.016651e+00 ; 9.039253e+00 ; 1.071671e+01 ];

%-- Image #5:
omc_5 = [ 2.531202e+00 ; -1.254878e-01 ; 6.165027e-03 ];
Tc_5  = [ -4.416813e+02 ; 2.458026e+02 ; 1.202064e+03 ];
omc_error_5 = [ 5.536487e-03 ; 1.273696e-03 ; 3.649833e-03 ];
Tc_error_5  = [ 2.990636e+00 ; 9.193647e+00 ; 1.059570e+01 ];

%-- Image #6:
omc_6 = [ 2.556082e+00 ; 2.055501e-01 ; -1.148271e-01 ];
Tc_6  = [ -5.265713e+02 ; 8.231276e+01 ; 1.312982e+03 ];
omc_error_6 = [ 5.342704e-03 ; 1.482422e-03 ; 3.768635e-03 ];
Tc_error_6  = [ 3.230419e+00 ; 9.743688e+00 ; 1.137024e+01 ];

%-- Image #7:
omc_7 = [ 2.517700e+00 ; 1.580488e-01 ; -6.959729e-02 ];
Tc_7  = [ -5.195186e+02 ; 1.317394e+02 ; 1.286015e+03 ];
omc_error_7 = [ 5.546922e-03 ; 1.400204e-03 ; 3.642767e-03 ];
Tc_error_7  = [ 3.177205e+00 ; 9.621002e+00 ; 1.126464e+01 ];

%-- Image #8:
omc_8 = [ 2.514757e+00 ; 3.498670e-01 ; -1.581174e-01 ];
Tc_8  = [ -5.619314e+02 ; 5.011104e+01 ; 1.339045e+03 ];
omc_error_8 = [ 5.411049e-03 ; 1.645377e-03 ; 3.740281e-03 ];
Tc_error_8  = [ 3.295894e+00 ; 9.881224e+00 ; 1.157610e+01 ];

%-- Image #9:
omc_9 = [ 2.466281e+00 ; 5.914910e-01 ; -2.175313e-01 ];
Tc_9  = [ -6.525700e+02 ; -6.320750e+01 ; 1.392628e+03 ];
omc_error_9 = [ 5.314460e-03 ; 1.980305e-03 ; 3.870792e-03 ];
Tc_error_9  = [ 3.428139e+00 ; 1.009097e+01 ; 1.205153e+01 ];

%-- Image #10:
omc_10 = [ 2.235525e+00 ; 1.245674e+00 ; -3.238618e-01 ];
Tc_10  = [ -5.160816e+02 ; -3.967915e+02 ; 1.550394e+03 ];
omc_error_10 = [ 4.802854e-03 ; 2.844342e-03 ; 4.245459e-03 ];
Tc_error_10  = [ 3.863108e+00 ; 1.068327e+01 ; 1.332096e+01 ];

%-- Image #11:
omc_11 = [ 2.240995e+00 ; 1.505938e+00 ; -3.376475e-01 ];
Tc_11  = [ -4.478364e+02 ; -4.500070e+02 ; 1.561825e+03 ];
omc_error_11 = [ 4.013718e-03 ; 2.924915e-03 ; 4.641697e-03 ];
Tc_error_11  = [ 3.899281e+00 ; 1.065066e+01 ; 1.350647e+01 ];

%-- Image #12:
omc_12 = [ 8.172755e-01 ; 2.786338e+00 ; -3.926589e-01 ];
Tc_12  = [ 3.181232e+02 ; -6.278130e+02 ; 1.576649e+03 ];
omc_error_12 = [ 1.691891e-03 ; 3.630038e-03 ; 5.803857e-03 ];
Tc_error_12  = [ 3.934063e+00 ; 1.053392e+01 ; 1.373199e+01 ];

%-- Image #13:
omc_13 = [ 2.978540e-02 ; 3.051501e+00 ; -3.998370e-01 ];
Tc_13  = [ 5.999421e+02 ; -4.804060e+02 ; 1.519143e+03 ];
omc_error_13 = [ 1.145750e-03 ; 3.505834e-03 ; 6.143512e-03 ];
Tc_error_13  = [ 3.784094e+00 ; 1.036695e+01 ; 1.333181e+01 ];

%-- Image #14:
omc_14 = [ 5.309969e-02 ; 3.012312e+00 ; -5.322125e-01 ];
Tc_14  = [ 4.710241e+02 ; -3.826781e+02 ; 1.506578e+03 ];
omc_error_14 = [ 1.135832e-03 ; 3.393518e-03 ; 6.534831e-03 ];
Tc_error_14  = [ 3.711721e+00 ; 1.033101e+01 ; 1.307603e+01 ];

%-- Image #15:
omc_15 = [ 2.696350e-01 ; -3.078767e+00 ; 5.568085e-01 ];
Tc_15  = [ 5.179364e+02 ; -3.130426e+02 ; 1.412109e+03 ];
omc_error_15 = [ 9.823809e-04 ; 3.187864e-03 ; 6.721486e-03 ];
Tc_error_15  = [ 3.491759e+00 ; 9.755908e+00 ; 1.231833e+01 ];

%-- Image #16:
omc_16 = [ 2.612188e+00 ; 7.317380e-02 ; -1.081247e-01 ];
Tc_16  = [ -5.147988e+02 ; 2.431005e+02 ; 1.106664e+03 ];
omc_error_16 = [ 5.246991e-03 ; 1.206115e-03 ; 3.776476e-03 ];
Tc_error_16  = [ 2.762612e+00 ; 8.480707e+00 ; 9.480000e+00 ];

%-- Image #17:
omc_17 = [ 1.504867e-01 ; 2.973128e+00 ; -8.359330e-01 ];
Tc_17  = [ 5.475514e+02 ; -4.500891e+02 ; 1.386586e+03 ];
omc_error_17 = [ 1.310061e-03 ; 3.788851e-03 ; 7.837288e-03 ];
Tc_error_17  = [ 3.452845e+00 ; 9.455327e+00 ; 1.191992e+01 ];

%-- Image #18:
omc_18 = [ 1.041678e+00 ; -2.705063e+00 ; 7.028343e-01 ];
Tc_18  = [ 6.213326e+02 ; -5.978968e+01 ; 1.252157e+03 ];
omc_error_18 = [ 1.367920e-03 ; 3.830744e-03 ; 6.785779e-03 ];
Tc_error_18  = [ 3.101282e+00 ; 9.004102e+00 ; 1.090971e+01 ];

%-- Image #19:
omc_19 = [ NaN ; NaN ; NaN ];
Tc_19  = [ NaN ; NaN ; NaN ];
omc_error_19 = [ NaN ; NaN ; NaN ];
Tc_error_19  = [ NaN ; NaN ; NaN ];

%-- Image #20:
omc_20 = [ 2.482276e+00 ; 7.156878e-01 ; -1.969498e-01 ];
Tc_20  = [ -5.899521e+02 ; -5.331985e+01 ; 1.311802e+03 ];
omc_error_20 = [ 5.079981e-03 ; 1.937943e-03 ; 3.839954e-03 ];
Tc_error_20  = [ 3.241745e+00 ; 9.496469e+00 ; 1.138490e+01 ];

