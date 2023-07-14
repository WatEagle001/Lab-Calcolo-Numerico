clear all;
clc;

n = 1;
x = linspace(0,1,20);

y = 2*x + 0.2 + 0.1*rand(size(x));
y = y';

V = fliplr(vander(x));


A = V(:,1:2);


coeff = (A'*A) \ (A'*y);

s = linspace(0,1,100);
y_approx = coeff(1) + coeff(2)*s;


figure(1)
plot(x,y);
hold on;
plot(s,y_approx);
