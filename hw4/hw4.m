%% Load data
close all; clear all; 
load hw4_A

%% Original ordering
[~, R] = qr(A); 
R = R(1:size(A, 2), :); 
spy(R); title('R matrix - original ordering'); 
print('-djpeg', 'original_R.jpg');

%% New ordering
[~, R] = qr(A(:, colamd(A))); 
R = R(1:size(A, 2), :); 
spy(R); title('R matrix - colamd ordering'); 
print('-djpeg', 'new_R.jpg');