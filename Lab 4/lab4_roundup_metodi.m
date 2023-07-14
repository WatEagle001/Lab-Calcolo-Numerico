clear all;
clc;
a = 0;
b = 1;
x = linspace(-2,2,2000);
f = @(x) exp(x) -2+x;

figure(1)
plot(x,f(x));
grid on;
title('grafico funzione in [-2,2]');

df =@(x) exp(x) + 1;
zero_funzone = 0.442854401002389;
g = @(x) -exp(x) +2;

[x,xall,iterate] = bisezione(f,a,b,10^-8,2000);
[x_2,xall_2,iter_2] = puntofisso(g,0.44,10^-8,2000);
[x_3,xall_3,iter_3] = newton(f,df,0,10^-8,2000);
[x_4,xall_4,iter_4] = bisezione2(f,a,b,10^-8,2000);
[x_5,xall_5,iter_5] = newton_mod(f,df,2,0,10^-8,2000);


err_rel = abs(zero_funzone-xall)/ abs(zero_funzone);
err_rel_2 = abs(zero_funzone-xall_2)/ abs(zero_funzone);
err_rel_3 = abs(zero_funzone-xall_3)/ abs(zero_funzone);
err_rel_4 = abs(zero_funzone-xall_4)/ abs(zero_funzone);
err_rel_5 = abs(zero_funzone-xall_5)/ abs(zero_funzone);

figure(2)
semilogy(1:iterate, err_rel, 'red');
hold on;
semilogy(1:iter_2, err_rel_2, 'black');
semilogy(1:iter_3, err_rel_3, 'yellow');
semilogy(1:iter_4, err_rel_4, 'green');
semilogy(1:iter_5, err_rel_5, 'magenta');
title('errori relativi a confronto con i  metodi');
legend('bisezione', 'puntofisso', 'newton', 'bisezione con residuo pesato', 'newton con molteplicità');
