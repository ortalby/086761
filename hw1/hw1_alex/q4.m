

clear all
% actual command

theta_err = 1*pi/180;
Rot_mat_err = [cos(theta_err), -sin(theta_err);
    sin(theta_err),cos(theta_err)];

Rot_mat_err(end+1,:) = 0;

x_com = [1.01;0;1];
R_com = eye(2);

% initial

x(:,1) = [0;0;1];
angle(:,1) = [1;0];
R(:,:,1) = eye(2);
R(end+1,:,1) = 0;

T = [Rot_mat_err,x_com]; %constant through all the sim!


for i=1:10
    
x(:,end+1) = T*x(:,end);

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
