clc;
close all;
clear all;

% --- User Input Section ---
tmin = input('The lower bound of theta in degree=');
tmax = input('The upper bound of theta in degree=');
pmin = input('The lower bound of phi in degree=');
pmax = input('The upper bound of phi in degree=');

% --- Variable Assignments ---
tinc = 2;
pinc = 4;
rad = pi/180;

% --- Range and Angle Conversion ---
theta1 = (tmin:tinc:tmax);
phi1 = (pmin:pinc:pmax);
theta = theta1 .* rad;
phi = phi1 .* rad;

% --- Meshgrid Generation ---
% Creates a 2D grid for the angles
[THETA, PHI] = meshgrid(theta, phi);

% --- Field Pattern Inputs ---
y1 = input('The field pattern: E(THETA,PHI)=');
v = input('The field pattern: P(THETA,PHI)=','s');

% --- Absolute Value Calculation ---
y = abs(y1);

% Calculate ratio (finding the maximum value in the matrix)
ratio = max(max(y));

% --- Coordinate Transformation ---
% sph2cart(azimuth, elevation, radius)
% We map PHI to azimuth and THETA to elevation
[X, Y, Z] = sph2cart(PHI, THETA, y); 

% --- Plotting the Pattern ---
mesh(X, Y, Z); 
axis equal; % Ensures the sphere is not distorted
title('3 D Pattern', 'Color', 'b', 'FontName', 'Helvetica', 'FontSize', 12, 'FontWeight', 'demi');

% --- Formatted Console Output ---
fprintf('\n Input Parameters: \n-------------------- ');
fprintf('\n Theta =%2.0f', tmin);
fprintf(' : %2.0f', tinc);
fprintf(' : %2.0f', tmax);
fprintf('\n Phi =%2.0f', pmin);
fprintf(' : %2.0f', pinc);
fprintf(' : %2.0f', pmax);
fprintf('\n FIELD PATTERN : %s', v);
fprintf('\n \n Output is shown in the figure below----------- ');
fprintf('\n');