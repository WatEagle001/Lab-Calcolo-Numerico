f = @(x) 1 ./ (1 + 25*x.^2);
n = 25;
s = linspace(-1,1,1000);

for i = 1:n
    x_equi = linspace(-1,1,i+1);
    x_cheb = -cos([0:i]*pi/i);

    y_equi = f(x_equi);
    y_cheb = f(x_cheb);

    t_equi = interpol(x_equi,y_equi,s);
    t_cheb = interpol(x_cheb, y_cheb,s);


    err_ass_equi(i) = max(abs(t_equi - f(s)));
    err_ass_cheb(i) = max(abs(t_cheb - f(s)));

end


fprintf('\n \t valore massimo errore assoluto equispaziato: %10.19f', err_ass_equi);
fprintf('\n \t valore massimo errore assoluto chebyshebv: %10.19f', err_ass_cheb);

figure(1)
semilogy(1:n, err_ass_equi);
hold on;
semilogy(1:n, err_ass_cheb);
title('err ass chebyshev vs nodi equispaziati');





