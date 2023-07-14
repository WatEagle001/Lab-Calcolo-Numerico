clear all;
clc;
x= 1.2e-5;

y1 = @(x) 1 - cos(x) / x.^2;
y2 = @(x) 0.5 * (sin(x/2).^2 / (x/2).^2);

f1 = y1(x);
f2 = y2(x);
fprintf('\n \t valore y1: %10.19f',f1);
fprintf('\n \t valore y2: %10.19f',f2);