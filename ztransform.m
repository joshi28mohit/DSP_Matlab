clc; clear all; close all;
syms t z;
x = [1 1 2 2];
n=-1:2;
k = sum(x.*(z.^(-n)));
pretty(k);

% Magnitude-> abs
% Phase-> angle

%Utilizing the laplace transform:
% m=sin(t);
% Laplace(m);