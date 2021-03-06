

clear all
% actual command

theta_err = 1*pi/180;
Rot_mat_err = [cos(theta_err), -sin(theta_err);
    sin(theta_err),cos(theta_err)];

Rot_mat_err(end+1,:) = 0;

x_com_orig = [1;0;1];
x_com = [1.01;0;1];
R_com = eye(2);

% initial

x(:,1) = [0;0;1];
x_original(:,1) = [0;0;1];
angle(:,1) = [1;0];
R(:,:,1) = eye(2);
R(end+1,:,1) = 0;

T = [Rot_mat_err,x_com]; %constant through all the sim!
T_original=eye(2);
T_original(end+1,:) = 0;
T_original(:,end+1) = x_com_orig;


for i=1:10
    
x(:,end+1) = T*x(:,end);
x_original(:,end+1) = T_original*x_original(:,end);

angle(:,end+1) = T(1:2,1:2)*angle(:,end);

% R(1:2,1:2,end+1) = Rot_mat_err*R(1:2,1:2,end);
% R(end,:,end) = 0;
% angle(:,end+1) = angle(:,end)+(1*pi/180);



end


h = figure(1);
plot(x(1,:),x(2,:));
axis equal;
grid on;
title('Position deviation');

h2 = figure(2);
plot(acos(angle(1,:))*180/pi);
grid on;
title('Angle deviation [deg]');


x_diff = x(1,end)-x_original(1,end);
y_diff = x(2,end)-x_original(2,end);

fprintf('Deviation from the X loc is %2.5f\n',x_diff);
fprintf('Deviation from the Y loc is %2.5f\n',y_diff);
fprintf('Total location difference is %2.5f\n',sqrt(x_diff^2+y_diff^2));
fprintf('Deviation from the zero angle is %2.5f\n',acos(angle(1,end))*180/pi);
