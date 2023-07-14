clear all;
clc;
x = linspace(-1e-10,1e-10,100);
f = @(x) (1+x) -1 ./ x;
y = f(x)
zero = 1;
erre_relativo = abs(y - zero) / abs(zero);

figure(1)
plot(x,y);
title('grafico funzione');


figure(2)
semilogy(x,erre_relativo);
title('grafico errore relativo');

