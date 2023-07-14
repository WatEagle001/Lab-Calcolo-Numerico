clear all;
clc;

f = @(x) cos(x) - sin(x);
n = 30;

s = linspace(-1,1,500);

for i = 1:n
    x_equi = linspace(-1,1,i+1);
    x_cheb = -cos([0:i]*pi/i);
    
    y_equi = f(x_equi);
    y_cheb = f(x_cheb);

    t_equi = interpol_bary(x_equi,y_equi,s');
    t_cheb = interpol_bary(x_cheb,y_cheb,s');

    err_ass_equi(i) = max(abs(t_equi - f(s)));
    err_ass_cheb(i) = max(abs(t_cheb - f(s)));

end

figure(1)
semilogy(1:n, err_ass_equi, 'blue');
hold on;
semilogy(1:n, err_ass_cheb, 'magenta');
