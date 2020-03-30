clc
clear all
close all

xm = [390 403 396.5 383.5 321.1 391.3 386.1 371.8 404.3 392.6 386.49 395.2 385.5 372 397 407 372.33 375.6 399];
ym = [36.66 37.05 34.71 32.5 32.63 34.45 36.79 37.44 38.09 38.09 38.74 39 40 36.21 34.05 41.79 30.25 38.83 39.66];
n = length(xm);

%xm(:) displays xm as a column vector
%ym(:) displays ym as a column vector

X = [ones(n,1) xm(:)]
a = (X.'*X)\(X.'*ym(:))   %inv((X.'*X))*(X.'*ym(:))       

b = a(1)
m = a(2)

xa = min(xm);
xb = max(xm);
x = linspace(xa,xb,100);
f = b + m*x;

xlim([320 400])
ylim([30 42])
plot(xm,ym,'.b')
hold on;
plot(x,f,'-r')
hold off;