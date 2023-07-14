x = linspace(0,1,20000);
f = @(x) exp(x)-2+x;

a = 0;
b = 1;
figure(1)
plot(x,f(x));
grid on;
title('grafico della funzione');

fprintf('\n \t segno di f(0)*f(1): %1d', sign(f(a)*f(b)));

[x,xall,iterate] = bisezione(f,a,b,10^-8,10000);


zero_funz = 0.4428544010023885;

err_rel = abs(xall - zero_funz) / abs(zero_funz);

figure(2)
semilogy(err_rel);
title('errore relativo al variare delle iterate');
