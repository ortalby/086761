%%
syms theta psi phi

phi = pi/4; theta = pi/5; psi = pi/7; 

rotx = [1, 0, 0; 0, cos(phi), -sin(phi); 0, sin(phi), cos(phi)]; 
roty = [cos(theta), 0, sin(theta); 0, 1, 0; -sin(theta), 0, cos(theta)]; 
rotz = [cos(psi), -sin(psi), 0; sin(psi), cos(psi), 0; 0, 0, 1]; 

rot = rotz*roty*rotx


