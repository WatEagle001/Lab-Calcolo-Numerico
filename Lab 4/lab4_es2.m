x = linspace(0,1,2000);
f = @(x) sin(x) +x-1;

figure(1)
plot(x,f(x));
grid on;
title('grafico funzione per trovare lo zero');

zero = 0.5;
radice_esatta = 0.510973429388569;

g = @(x) -sin(x) +1;

h = @(x) x;
figure(2)
plot(x,g(x));
grid on;
hold on;
plot(x, h(x));

[x,xall,iter] = puntofisso(g,zero,10^-8,2000);

err_rel = abs(xall - radice_esatta) / abs(radice_esatta);

figure(3)
semilogy(err_rel, 'red');
