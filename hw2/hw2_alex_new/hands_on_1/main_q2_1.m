

% given

f_x = 480;
f_y = 480;
skew = 0;
u_0 = 320;
v_0 = 270;

R_G_C = [0.5363 -0.8440 0;...
         0.8440 0.5363 0;...
         0 0 1];
T_C_G = [-451.2459; 257.0322;400];

K = [f_x skew u_0;...
    0 f_y v_0;...
    0 0 1];

R_t_matrix = R_G_C;
R_t_matrix(:,end+1) = T_C_G;

Calibration_M = K*R_t_matrix;


Point_W = [350;-250;-35;1];
Point_uv = [241.5; 169];

Point_C = R_t_matrix*Point_W;
homo_coords = K*Point_C;
norm_coords = [homo_coords(1)/homo_coords(3);...
               homo_coords(2)/homo_coords(3)];
           
homo_coords2 = Calibration_M*Point_W;         
norm_coords2 = [homo_coords2(1)/homo_coords2(3);...
               homo_coords2(2)/homo_coords2(3)];
           
reproj_err = Point_uv - norm_coords;
           
           
fprintf('Normalized coordinated of the 3D points in the camera are\n[%2.4f %2.4f]\n',norm_coords(1),norm_coords(2));
fprintf('The point appears on the screen in \n[%2.4f %2.4f]\n',Point_uv(1),Point_uv(2));
fprintf('The reprojection error is \n[%2.4f %2.4f]\n',reproj_err(1),reproj_err(2));

















