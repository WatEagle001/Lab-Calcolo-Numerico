clear all;
clc;

x = linspace(-2,2,2000);
f = @(x) exp(x) -2+x;

figure(1)
plot(x,f(x));
grid on;
title('grafico funzione in [-2,2]');


df =@(x) exp(x) + 1;

[x,xall,iter] = newton(f,df,0,10^-6,2000);

zero_funzone = 0.442854401002389;

err_rel = abs(xall - zero_funzone) / abs(zero_funzone);

figure(2)
semilogy(1:iter, err_rel, 'blue');
grid on;
