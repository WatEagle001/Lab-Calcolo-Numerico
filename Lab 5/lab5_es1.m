n = 5;
x = linspace(-1,1,n+1);
x_cheb = -cos([0:n]*pi/n);
f = @(x) (exp(-2*x) / 3) + x.^2 + 7*x.^3;
y = f(x);
y_cheb = f(x_cheb);

s = linspace(-1,1,500);

t = interpol(x,y,s);
t_cheb = interpol(x_cheb,y_cheb,s);

figure(1)
plot(s,f(s), 'blue');
hold on;
plot(s,t, 'red--');
title('polinomio nodi equispaziati');

figure(2)
plot(s,f(s), 'blue');
hold on;
plot(s,t_cheb, 'red--');
title('polinomio interpolatore nodi chebyshev');

err_ass = max(abs(t - f(s)));
err_ass_2 = max(abs(t_cheb - f(s)));
fprintf('\n \t valore massimo errore assoluto: %10.19f', err_ass);
fprintf('\n \t valore massimo errore assoluto chebyshebv: %10.19f', err_ass_2);




